#!/usr/bin/env bash
# uso: test-layout.sh <disco> <layout>
# ATENÇÃO: apaga o disco informado

disk="$1"
layout="$2"

uso() {
	echo "uso: ${0##*/} <disco> <layout>"
	echo "  1  GPT sem BIOS boot"
	echo "  2  GPT igual ao automático (BIOS boot, ESP, raiz)"
	echo "  3  GPT ordem trocada (ESP p1, raiz p2, BIOS boot p3)"
	echo "  4  GPT dual boot Windows (ESP 100MiB, MSR, ntfs, raiz)"
	echo "  5  GPT com BIOS boot e sem ESP"
	echo "  6  MBR (raiz + swap)"
	exit 1
}

[[ "$layout" =~ ^[1-6]$ ]] || uso
[[ -b "$disk" ]] || {
	echo "erro: $disk não é um dispositivo de bloco"
	exit 1
}
((EUID == 0)) || {
	echo "erro: rode como root"
	exit 1
}

# LV, dm etc.: as partições só aparecem via kpartx
eh_dm() {
	[[ "$(lsblk -dno TYPE "$disk" 2>/dev/null)" == lvm || "$(readlink -f "$disk")" == /dev/dm-* ]]
}

# Caminho da partição N do disco, seja sda3, nvme0n1p3, loop0p3 ou
# /dev/mapper/pve-base3: procura entre as partições que o kernel mostra.
part() {
	local n="$1" path num try
	# o kernel/udev pode levar um instante para recriar as partições
	for try in {1..20}; do
		while read -r path; do
			num="$(cat "/sys/class/block/$(basename "$(readlink -f "$path")")/partition" 2>/dev/null)"
			[[ -n "$num" ]] || num="$(grep -o '[0-9]*$' <<<"$path")"
			[[ "$num" == "$n" && -b "$path" ]] && echo "$path" && return 0
		done < <(lsblk -lnpo PATH,TYPE "$disk" 2>/dev/null | awk '$2=="part"{print $1}')
		sleep 0.5
	done
	echo "erro: partição $n de $disk não encontrada" >&2
	exit 1
}

atualiza() {
	partprobe "$disk" 2>/dev/null
	partx -u "$disk" 2>/dev/null
	eh_dm && kpartx -a "$disk" 2>/dev/null
	udevadm settle 2>/dev/null
	sleep 1
}

# 1) Limpa as assinaturas (ext4, vfat, ntfs, swap…) de cada partição atual.
#    O wipefs no disco sozinho só apaga a tabela: o sistema de arquivos antigo
#    continua no lugar e reaparece se a partição for recriada no mesmo ponto.
atualiza
for p in $(lsblk -lnpo PATH,TYPE "$disk" 2>/dev/null | awk '$2=="part"{print $1}'); do
	wipefs -a "$p" >/dev/null
done
eh_dm && kpartx -d "$disk" 2>/dev/null
wipefs -a "$disk" >/dev/null

# 2) Cria o layout
case "$layout" in
1) # GPT sem BIOS boot -> erro em BIOS / aviso em UEFI sem ESP
	parted -s "$disk" -- mklabel gpt \
		mkpart primary ext4 1MiB 100%
	;;
2) # GPT igual ao automático: p1 BIOS boot, p2 ESP, p3 raiz
	parted -s "$disk" -- mklabel gpt \
		mkpart primary 2MiB 4MiB set 1 bios_grub on \
		mkpart primary fat32 4MiB 512MiB set 2 esp on \
		mkpart primary ext4 512MiB 100%
	;;
3) # GPT ordem trocada: p1 ESP, p2 raiz, p3 BIOS boot no fim
	parted -s "$disk" -- mklabel gpt \
		mkpart primary fat32 1MiB 513MiB set 1 esp on \
		mkpart primary ext4 513MiB -3MiB \
		mkpart primary -3MiB -1MiB set 3 bios_grub on
	;;
4) # GPT dual boot Windows: p1 ESP 100MiB, p2 MSR, p3 ntfs, p4 raiz, sem BIOS boot
	parted -s "$disk" -- mklabel gpt \
		mkpart primary fat32 1MiB 101MiB set 1 esp on \
		mkpart primary 101MiB 117MiB set 2 msftres on \
		mkpart primary ntfs 117MiB 50% \
		mkpart primary ext4 50% 100%
	;;
5) # GPT com BIOS boot e sem ESP
	parted -s "$disk" -- mklabel gpt \
		mkpart primary 1MiB 3MiB set 1 bios_grub on \
		mkpart primary ext4 3MiB 100%
	;;
6) # MBR: p1 raiz (boot), p2 swap
	parted -s "$disk" -- mklabel msdos \
		mkpart primary ext4 1MiB -2GiB set 1 boot on \
		mkpart primary linux-swap -2GiB 100%
	;;
esac
atualiza

# 3) Limpa também as partições novas: as que não são formatadas abaixo
#    (BIOS boot, MSR) podem cair em cima de restos de assinatura antiga.
for p in $(lsblk -lnpo PATH,TYPE "$disk" 2>/dev/null | awk '$2=="part"{print $1}'); do
	wipefs -a "$p" >/dev/null
done

# 4) Formata
set -e
case "$layout" in
1)
	mkfs.ext4 -qF "$(part 1)"
	;;
2)
	mkfs.vfat -F32 "$(part 2)" >/dev/null
	mkfs.ext4 -qF "$(part 3)"
	;;
3)
	mkfs.vfat -F32 "$(part 1)" >/dev/null
	mkfs.ext4 -qF "$(part 2)"
	;;
4)
	mkfs.vfat -F32 "$(part 1)" >/dev/null
	mkfs.ntfs -Q -F "$(part 3)" >/dev/null
	mkfs.ext4 -qF "$(part 4)"
	;;
5)
	mkfs.ext4 -qF "$(part 2)"
	;;
6)
	mkfs.ext4 -qF "$(part 1)"
	mkswap "$(part 2)" >/dev/null
	;;
esac
set +e
udevadm settle 2>/dev/null

parted -s "$disk" print
lsblk -o NAME,SIZE,FSTYPE,PARTTYPENAME "$disk"
