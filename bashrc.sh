#!/usr/bin/env bash

#HISTIGNORE='+([a-z])'
#HISTIGNORE=$'*([\t ])+([-%+,./0-9\:@A-Z_a-z])*([\t ])'
#export TMPDIR=/tmp
#export TMPDIR=/dev/shm
#export LC_ALL="pt_BR.UTF-8"
#export LC_ALL=C
IFS=$' \t\n'
SAVEIFS=$IFS
PROMPT_DIRTRIM=0

tput sgr0 # reset colors
bold=$(tput bold)
reset=$(tput sgr0)
rst=$(tput sgr0)
red=$(tput setaf 1)
green=$(tput setaf 2)
blue=$(tput setaf 4)
pink=$(tput setaf 5)
cyan=$(tput setaf 6)
orange=$(tput setaf 3)
purple=$(tput setaf 125)
violet=$(tput setaf 61)
black=$(tput bold)$(tput setaf 0)
white=$(tput bold)$(tput setaf 7)
yellow=$(tput bold)$(tput setaf 3)

export PS1="$red\u$yellow@$cyan\h$red $reset\w# "
export PS4='${red}${0##*/}${green}[$FUNCNAME]${pink}[$LINENO]${reset} '
#set -x
#set -e
shopt -s extglob
#set -o noclobber   #bloquear substituicao de arquivo existente
set +o noclobber #liberar  substituicao de arquivo existente. operator >| ignore the noclobbeer
export ROOTDIR=${PWD#/} ROOTDIR=/${ROOTDIR%%/*}
#export PATH=".:/usr/bin:/usr/sbin:/bin:/sbin:/tools/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/.local/bin:$HOME/sbin:$HOME/.cargo/bin:$PATH"
export CDPATH=".:..:~"
export VISUAL=nano
export EDITOR=nano
eval $(dircolors -b $HOME/.dircolors)
ulimit -S -c 0 # Don't want coredumps.

#newbie from windows
alias l=$PWD
alias r=$OLDPWD
alias ls="ls -la --color=auto --group-directories-first"
alias cdg="cd /github/RepoVoidLinux/void/current/"
alias cdp="cd /var/cache/xbps"
alias cda="cd /var/cache/fetch/archives"
alias cda="cd $HOME/.local/share/applications/"
alias cdb="cd /github/"
alias cdv="cd /github/voidbr/"
alias dira="dir $HOME/.local/share/applications/"
alias dirb="dir /github/bcc/"
alias cds="cd /var/cache/fetch/search"
alias cdd="cd /var/cache/fetch/desc"
alias cdl="cd /github/sci/linux"
alias cdk="cd /github/mklive"
alias cdf="cd /github/fenix"
alias cdgo="cd /chili/go/"

alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias ack="ack -n --color-match=red"
alias cls=clear
alias copy=cp
alias dd="dd status=progress"
alias dmesg="dmesg -T -x"
alias dirm="ls -h -ls -Sr --color=auto"
alias dirt="la -h -ls -Sr -rt --color=auto"
alias dir='exa --all --long --modified --group --color=auto --'
alias DIR='exa --all --long --modified --group --color=auto --'
alias del=rm
alias du="du -h"
alias dut="du -hs * | sort -h"
alias df="df -hT --total"
alias dut="du -hs * | sort -h"
alias dmesg="dmesg -T -x"
alias dmesgerr="dmesg -T -x | grep -P '(:err |:warn )'"
alias discos="udisksctl status"
alias ed=nano
alias ED=nano
alias fs="file -s"
alias dcomprimtar="tar -vzxf"
alias deltraco="rm --"
alias disable="sv stop $1"
alias CD=cd
alias cds="cd /etc/runit/runsvdir/current/; ls"
alias cdd="cd /etc/sv/; ls"
alias ddel="find -name $1 | xargs sudo rm -fvR"
alias ddel2="find -iname $1 | xargs sudo rm --verbose"
alias fdisk="fdisk -l"
alias ip="ip -c"
alias l=dir
alias listen="netstat -anp | grep :"
alias mem="free -h"
alias md=mkdir
alias ouvindo="netstat -anp | grep :"
alias ouvindo="netstat -anp | grep :"
alias ports="sockstat | grep ."
alias portas="nmap -v localhost"
alias portas1="lsof -i | grep ."
alias pyc="python -OO -c 'import py_compile; py_compile.main()'"
alias rd=rmdir
alias ren=mv
alias rsync="rsync --progress -Cravzp"
alias reload="sv reload $1"
alias restart="sv restart $1"
alias start="sv start $1"
alias stop="sv stop $1"
alias status="sv status $1"
alias smbmount="mount -t cifs -o username=$USER,password=senha //10.0.0.68/c /root/windows"
alias tml="tail -f /var/log/lastlog"
alias targz="tar -xzvf"
alias tarxz="tar -Jxvf"
alias tarbz2="tar -xvjf"
alias untar="tar -xvf"
alias ver="lsb_release -a"
alias versao=ver
alias wget="wget --no-check-certificate"
alias xcopyn="cp -Rpvan"
alias xcopy="cp -Rpva"
alias chili-duf='lsblk -Ao NAME,PATH,SIZE,TRAN,MODEL,LABEL,SERIAL,PTTYPE'

#harbour
alias rmake="[ ! -d /tmp/.hbmk ] && { mkdir -p /tmp/.hbmk; }; hbmk2 -info -comp=gcc   -cpp=yes -jobs=36"
#alias rmake="hbmk2 -info -comp=clang -cpp=yes -jobs=36"

#man colour
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

#log_msgs
NORMAL="${reset}"   # Standard console grey
SUCCESS="${green}"  # Success is green
WARNING="${yellow}" # Warnings are yellow
FAILURE="${red}"    # Failures are red
INFO="${cyan}"      # Information is light cyan
BRACKET="${blue}"   # Brackets are blue
BMPREFIX="     "
DOTPREFIX="  ${blue}::${reset} "
SUCCESS_PREFIX="${SUCCESS}  *  ${NORMAL}"
FAILURE_PREFIX="${FAILURE}*****${NORMAL}"
WARNING_PREFIX="${WARNING}  W  ${NORMAL}"
SKIP_PREFIX="${INFO}  S  ${NORMAL}"
SUCCESS_SUFFIX="${BRACKET}[${SUCCESS}  OK  ${BRACKET}]${NORMAL}"
FAILURE_SUFFIX="${BRACKET}[${FAILURE} FAIL ${BRACKET}]${NORMAL}"
WARNING_SUFFIX="${BRACKET}[${WARNING} WARN ${BRACKET}]${NORMAL}"
SKIP_SUFFIX="${BRACKET}[${INFO} SKIP ${BRACKET}]${NORMAL}"
WAIT_PREFIX="${WARNING}  R  ${NORMAL}"
WAIT_SUFFIX="${BRACKET}[${WARNING} WAIT ${BRACKET}]${NORMAL}"
FAILURE_PREFIX="${FAILURE}  X  ${NORMAL}"

path() { echo -e "${PATH//:/\\n}"; }
xdel() { find . -name "*$1*" | xargs rm -fv; }
tolower() { find . -name "*$1*" | while read; do mv "$REPLY" "${REPLY,,}"; done; }
toupper() { find . -name "*$1*" | while read; do mv "$REPLY" "${REPLY^^}"; done; }
has() { command -v "$1" >/dev/null; }
printeradd() { addprinter "$@"; }

lsd() {
	printf "${blue}\n"
	ls -l | awk '/^d/ {print $9}'
	printf "${reset}"
}

lsa() {
	echo -n ${orange}
	ls -l | awk '/^-/ {print $9}'
}

filehoracerta() {
	export SOURCE_DATE_EPOCH=$(date +%s)
	find . -exec touch -h -d @$SOURCE_DATE_EPOCH {} +
}

horacerta() {
	sudo ntpd -q -g
	sudo hwclock --systohc
}
GREP_OPTIONS() { GREP_OPTIONS='--color=auto'; }
email() { echo "CORPO" | mail -s "Subject" -A /etc/bashrc teste@balcao; }
log_wait_msg() {
	printf "${BMPREFIX}${@}"
	printf "${CURS_ZERO}${WAIT_PREFIX}${SET_COL}${WAIT_SUFFIX}\n"
	return 0
}

log_success_msg() {
	printf "${BMPREFIX}${@}"
	printf "${CURS_ZERO}${SUCCESS_PREFIX}${SET_COL}${SUCCESS_SUFFIX}\n"
	return 0
}

log_success_msg2() {
	printf "${BMPREFIX}${@}"
	printf "${CURS_ZERO}${SUCCESS_PREFIX}${SET_COL}${SUCCESS_SUFFIX}\n"
	return 0
}

log_info_msg() {
	echo -n -e "${BMPREFIX}${@}"
	return 0
}

evaluate_retval() {
	local error_value="$?"
	if [ $# -gt 0 ]; then
		error_value="$1"
	fi
	if ! (($grafico)); then
		if [ ${error_value} = 0 ]; then
			log_success_msg2
		else
			log_failure_msg2
		fi
	fi
	return ${error_value}
}

log_failure_msg2() {
	printf "${BMPREFIX}${@}"
	printf "${CURS_ZERO}${FAILURE_PREFIX}${SET_COL}${FAILURE_SUFFIX}\n"
	return 0
}

addprinter() {
	sudo cupsctl --remote-any --share-printers
	sudo lpadmin -p LPT1 -E -v ipp://10.0.0.99/p1 -L "EPSON LX300 em Atendimento" -m everywhere -o print-is-shared=true -u allow:all
	sudo lpadmin -p LPT2 -E -v socket://10.0.0.99 -m everywhere -o print-is-shared=true -u allow:all
	sudo lpadmin -p LPT3 -E -v ipp://10.0.0.99/p2 -m everywhere -o print-is-shared=true -u allow:all
	sudo lpadmin -p LPT4 -E -v ipp://10.0.0.99/p3 -m everywhere -o print-is-shared=true -u allow:all
	sudo lpadmin -p SAMSUNG2070 -E -v ipp://10.0.0.77/ipp/print -m everywhere -o print-is-shared=true -u allow:all
	sudo lpadmin -p DeskJet -E -v parallel:/dev/lp0 -m everywhere -u allow:all
	sudo lpadmin -p DotMatrix -E -m epson9.ppd -v serial:/dev/ttyS0?baud=9600+size=8+parity=none+flow=soft -u allow:all
	sudo lpadmin -p PRINTERNAME -E -v smb://10.0.0.68/P1 -L "LOCATION" -o auth-info-required=negotiate -u allow:all
	sudo lpadmin -d LPT1
}

sshsemsenha() {
	_SERVIDOR=$1
	echo $1
	ssh-keygen -t rsa
	ssh-copy-id -p 22 -f -i ~/.ssh/id_rsa.pub $_SERVIDOR
}

xdel1() {
	arr=$(find -iname "${1}")
	echo "${arr[*]}"
	for i in "${arr[*]}"; do
		rm -f $i
	done
}

rdel() {
	for i in $(find -iname "$1"); do
		rm -f $i
	done
}

delr() {
	for i in $(find -iname "$1"); do
		rm -f $i
	done
}

void-ramdisk() {
	sudo mkdir /mnt/ramdisk
	sudo mount -t tmpfs -o size=4096M tmpfs /mnt/ramdisk
	#fstab
	#tmpfs       /mnt/ramdisk tmpfs   nodev,nosuid,noexec,nodiratime,size=512M   0 0
}

void-qemuimg() {
	if test $# -ge 1; then
		qemu-system-x86_64 -no-fd-bootchk -nographic $1
	else
		cat <<EOF
usage:
	void-qemuimg <file>
EOF
	fi
}

void-qemu() {
	qemu-system-x86_64 -m 4096 -no-fd-bootchk -nographic -cdrom $1
}

void-qemux() {
	qemu-system-x86_64 -curses -no-fd-bootchk -nographic -cdrom $1
}

void-qemukvm() {
	qemu-system-x86_64 -enable-kvm -m 2048 -name 'VOID OS' -boot -cdrom $1
}

void-qemurunraw() {
	if test $# -ge 1; then
		qemu-system-x86_64 \
			-display curses \
			-no-fd-bootchk \
			-drive format=raw,file=$1 \
			-m "size=8128,slots=0,maxmem=$((8128 * 1024 * 1024))"
	else
		cat <<EOF
usage:
	void-qemurunraw file.img
EOF
	fi
}

void-qemu-img-create() {
	local image=$1
	local type=$2
	local size=$3

	if test $# -ge 3; then
		qemu-img create $image -f $type $size
		qemu-img info $image
	else
		cat <<EOF
usage:
	void-qemu-img-create filename type size
	=========================================
	${pink}Raw${reset} 		Raw is default format if no specific format is specified while creating disk images.
	Qcow2		Qcow2 is opensource format developed against Vmdk and Vdi. Qcow2 provides features like compression,
	Qed		Qed is a disk format provided by Qemu. It provides support for overlay and sparse images. Performance of Qed is better than Qcow2 .
	Qcow		Qcow is predecessor of the Qcow2.
	Vmdk		Vmdk is default and popular disk image format developed and user by VMware.
	Vdi		Vdi is popular format developed Virtual Box. It has similar features to the Vmdk and Qcow2
	Vpc		Vps is format used by first generation Microsoft Virtualization tool named Virtual PC. It is not actively developed right now.
	=========================================
	'size' is the disk image size in bytes. Optional suffixes
	'k' or 'K' (kilobyte, 1024),
	'M' (megabyte, 1024k),
	'G' (gigabyte, 1024M),
	'T' (terabyte, 1024G),
	'P' (petabyte, 1024T) and
	'E' (exabyte, 1024P)

	void-qemu-img-create void.img raw 10M
	void-qemu-img-create debian.qcow2 qcow2 10G
EOF
	fi
}

void-qemu-img-convert-raw-to-qcow2() {
	if test $# -ge 2; then
		qemu-img convert -f raw $1 -O qcow2 $2
	else
		cat <<EOF
usage:
	void-qemu-img-convert-img-to-qcow2 hda0.img hda1.qcow2
EOF
	fi
}

void-qemu-img-convert-vdi-to-raw() {
	if test $# -ge 2; then
		qemu-img convert -f vdi -O raw $1 $2
	else
		cat <<EOF
usage:
	void-qemu-img-convert-vdi-to-raw image.vdi image.img
EOF
	fi
}

void-qemurunqcow2() {
	qemu-system-x86_64 \
		-drive file=$1,if=none,id=disk1 \
		-device ide-hd,drive=disk1,bootindex=1 \
		-m "size=8192,slots=0,maxmem=$((8192 * 1024 * 1024))" \
		-k br-abnt2 \
		-vga virtio \
		-smp 16 \
		-machine type=q35,smm=on,accel=kvm,usb=on \
		-enable-kvm
}

void-qemurunuefi() {
	image=$1
	if test $# -ge 1; then
		local ovmf_code='/usr/share/edk2-ovmf/x64/OVMF_CODE.fd'
		local ovmf_vars='/usr/share/edk2-ovmf/x64/OVMF_VARS.fd'
		local working_dir="$(mktemp -dt run_archiso.XXXXXXXXXX)"

		sudo qemu-system-x86_64 \
			-enable-kvm \
			-cpu host \
			-smp 36 \
			-m 8192 \
			-drive file=${image},if=virtio,format=raw \
			-m "size=8128,slots=0,maxmem=$((8128 * 1024 * 1024))" \
			-device virtio-net-pci,netdev=net0 -netdev user,id=net0 \
			-vga virtio \
			-display gtk \
			-device intel-hda \
			-audiodev pa,id=snd0,server=localhost \
			-device hda-output,audiodev=snd0 \
			-net nic,model=virtio \
			-net user \
			-drive if=pflash,format=raw,unit=0,file=${ovmf_code},read-only=off \
			-drive if=pflash,format=raw,unit=1,file=${ovmf_vars} \
			-enable-kvm \
			-serial stdio
	else
		cat <<EOF
usage:
	void-qemurunuefi file.img
	void-qemurunuefi file.qcow2
EOF
	fi
}
#        -hda /archlive/qemu/hda.img 	\
#        -hdb /archlive/qemu/hdb.img 	\
#       	-display curses    				\
#        -vga virtio 						\

void-qemurunfile() {
	if test $# -ge 1; then
		sudo qemu-system-x86_64 \
			-no-fd-bootchk \
			-drive file=${1},if=none,id=disk1 \
			-device ide-hd,drive=disk1,bootindex=1 \
			-m "size=8128,slots=0,maxmem=$((8128 * 1024 * 1024))" \
			-name archiso,process=archiso_0 \
			-device virtio-scsi-pci,id=scsi0 \
			-audiodev pa,id=snd0,server=localhost \
			-device ich9-intel-hda \
			-device hda-output,audiodev=snd0 \
			-device virtio-net-pci,romfile=,netdev=net0 -netdev user,id=net0,hostfwd=tcp::60022-:22 \
			-global ICH9-LPC.disable_s3=1 \
			-machine type=q35,smm=on,accel=kvm,usb=on,pcspk-audiodev=snd0 \
			"${qemu_options[@]}" \
			-smp 36 \
			-enable-kvm \
			-serial stdio
	else
		cat <<EOF
usage:
   void-qemurunfile file.img
   void-qemurunfile file.qcow2
EOF
	fi
}
#        -hda /archlive/qemu/hda.img \
#        -hdb /archlive/qemu/hdb.img \
#        -hdc /archlive/qemu/hdc.img \
#        -hdd /archlive/qemu/hdd.img \
#       -vga virtio     \
#        -display "sdl" \
#       -device qxl-vga,vgamem_mb=128 \
#        -k br-abnt2 \

void-qemufilerun() { void-qemurunfile $@; }
filerun() { void-qemurunfile $@; }
fr() { void-qemurunfile $@; }
fru() { void-qemurunuefi $@; }
frr() { void-qemurunimg $@; }
fileinfo() { qemu-img info $@; }
export -f fr
export -f void-qemurunfile

frc() {
	if test $# -ge 1; then
		sudo qemu-system-x86_64 \
			-no-fd-bootchk \
			-drive file=${1},if=none,id=disk1 \
			-device ide-hd,drive=disk1,bootindex=1 \
			-hda /archlive/qemu/hda.img \
			-hdb /archlive/qemu/hdb.img \
			-hdc /archlive/qemu/hdc.img \
			-hdd /archlive/qemu/hdd.img \
			-m "size=8128,slots=0,maxmem=$((8128 * 1024 * 1024))" \
			-name archiso,process=archiso_0 \
			-device virtio-scsi-pci,id=scsi0 \
			-audiodev pa,id=snd0,server=localhost \
			-device ich9-intel-hda \
			-device hda-output,audiodev=snd0 \
			-device virtio-net-pci,romfile=,netdev=net0 -netdev user,id=net0,hostfwd=tcp::60022-:22 \
			-global ICH9-LPC.disable_s3=1 \
			-machine type=q35,smm=on,accel=kvm,usb=on,pcspk-audiodev=snd0 \
			-display curses \
			"${qemu_options[@]}" \
			-smp 36 \
			-enable-kvm \
			-serial stdio
	else
		cat <<EOF
usage:
	frc file.img
	frc file.qcow2
EOF
	fi
}

rf() {
	if test $# -ge 1; then
		qemu-system-x86_64 \
			-m "size=8128,slots=0,maxmem=$((8128 * 1024 * 1024))" \
			-hda ${1} \
			-smp 18 \
			-enable-kvm
	else
		cat <<EOF
usage:
	rf hda.qcow2
	rf hdb.img
EOF
	fi
}

void-qemurunimg() {
	if test $# -ge 1; then
		qemu-system-x86_64 \
			-drive file=${1},format=raw,if=none,id=disk1 \
			-device ide-hd,drive=disk1,bootindex=1 \
			-m "size=8128,slots=0,maxmem=$((8128 * 1024 * 1024))" \
			-k br-abnt2 \
			-name archiso,process=archiso_0 \
			-device virtio-scsi-pci,id=scsi0 \
			-display "sdl" \
			-vga virtio \
			-audiodev pa,id=snd0,server=localhost \
			-device ich9-intel-hda \
			-device hda-output,audiodev=snd0 \
			-device virtio-net-pci,romfile=,netdev=net0 -netdev user,id=net0,hostfwd=tcp::60022-:22 \
			-machine type=q35,smm=on,accel=kvm,usb=on,pcspk-audiodev=snd0 \
			-global ICH9-LPC.disable_s3=1 \
			-smp 16 \
			-enable-kvm \
			"${qemu_options[@]}" \
			-serial stdio
	else
		cat <<EOF
usage:
	void-qemurunimg hda.img
	void-qemurunimg hdb.img
EOF
	fi
}

maketap() {
	#need uml-utilities
	sudo modprobe tun
	sudo tunctl -t tap0
	sudo ifconfig tap0 0.0.0.0 promisc up
	sudo ifconfig enp3s0 0.0.0.0 promisc up
	sudo brctl addbr br0
	sudo brctl addif br0 tap0
	#sudo brctl addif br0 enp3s0
	sudo brctl show
	sudo ifconfig br0 up
	sudo ifconfig br0 10.7.7.66/24
}

vlanubnt() {
	#telnet 10.0.0.51
	#ssh 10.0.0.51
	vconfig add br0 5
	vconfig add br0 10
	ifconfig br0.5 x.x.x.x netmask x.x.x.x up
	ifconfig br0.10 x.x.x.x netmask x.x.x.x up
}

void-videoultrahd() {
	sudo xrandr --newmode "2560x1080_60.00" 230.00 2560 2720 2992 3424 1080 1083 1093 1120 -hsync +vsync
	sudo xrandr --addmode HDMI-0 2560x1080_60.00
}

tms() {
	sudo dmesg -w -T -x
}

lsvideo() {
	echo -e "1. xrandr"
	sudo xrandr
	echo
	echo -e "2. grep -i chipset /var/log/Xorg.0.log"
	sudo grep -i chipset /var/log/Xorg.0.log
	echo
	echo -e "3. lshw -C video"
	sudo lshw -C video
	echo
	echo -e "4. sudo lspci -k | grep -A 2 -E '(VGA|3D)'"
	sudo lspci -k | grep -A 2 -E '(VGA|3D)'
	echo -e '5. sudo lspci -nnkd::0300'
	sudo lspci -nnkd::0300
}
export -f lsvideo

ddel3() {
	find -iname $1 | xargs rm --verbose
}

chili-session() {
  local _session="$XDG_SESSION_TYPE";
  echo "Desktop: $XDG_CURRENT_DESKTOP";
  echo "Session: $_session"
}
void-session() { chili-session "$@"; }
voidbr-session() { chili-session "$@"; }

voidbr-net() {
  echo "Iniciando rede"

  # pega interface física válida
  iface=$(ip -o link show | awk -F': ' '{print $2}' \
    | grep -E '^(eth|en)' \
    | head -n1)

  if [ -z "$iface" ]; then
    echo "Erro: nenhuma interface válida encontrada"
    return 1
  fi

  echo "Interface detectada: $iface"

  ip link set "$iface" up
  ip addr flush dev "$iface"
  ip addr add 10.0.0.67/21 dev "$iface"
  ip route add default via 10.0.0.254 dev "$iface"

  ip route list
}

gpull() {
	local rst=$(tput sgr0)
	local red=$(tput setaf 1)
	local green=$(tput setaf 2)
	local blue=$(tput setaf 4)

	#export GH_TOKEN=
	export EDITOR=nano
	log_wait_msg "${blue}Iniciando git pull ${rst}"
	sudo git config credential.helper store
	#	git config pull.ff only
	#	git pull
	git pull --no-ff
}

gpush() {
	local rst=$(tput sgr0)
	local red=$(tput setaf 1)
	local green=$(tput setaf 2)
	local blue=$(tput setaf 4)
	local username=$(gh api user --jq '.login')
	local name=$(gh api user --jq '.name')
	local email=$(gh api user --jq '.email')

	#export GH_TOKEN=
	export EDITOR=nano
	log_wait_msg "${red}Iniciando git push ${rst}"
	git config --global user.name "$username"
	git config --global user.email "$email"
	git config credential.helper store
	git add -A
	git commit -m "$(date) $name ($email)"
	git push --force
}

gto() {
	log_wait_msg "${red}Mudando para ${reset}: $1"
	git checkout $1
}

gclean() {
	local name=$(gh api user --jq '.name')
	local email=$(gh api user --jq '.email')
	#Execute o seguinte comando para fazer backup do seu branch atual:
	sudo git branch backup_branch
	#Execute o seguinte comando para criar um novo branch a partir do atual, mas sem nenhum histórico de commits:
	sudo git checkout --orphan new_branch
	#Agora, todos os arquivos do projeto aparecerão como "untracked". Adicione todos eles ao staging area com o comando:
	sudo git add .
	#Comite os arquivos com uma mensagem de confirmação:
	sudo git commit -m "Restart commit - $(date) $name ($email)"
	#Finalmente, sobrescreva o branch atual com o novo branch criado:
	sudo git branch -M new_branch
}

cpd() {
	TITLE='Copiando...'
	MSG='Copiando o diretório $ORIGEM para $DESTINO'
	INTERVALO=1 # intervalo de atualização da barra (segundos)
	PORCENTO=0  # porcentagem inicial da barra
	#................................................................
	ORIGEM="${1%/}"
	DESTINO="${2%/}"
	#................................................................
	die() { echo "Erro: $*"; }
	sizeof() { du -s "$1" | cut -f1; }
	running() { ps $1 | grep $1 >/dev/null; }

	#................................................................

	# tem somente dois parâmetros?
	[ "$2" ] || die "Usage: $0 dir-origem dir-destino"

	# a origem e o destino devem ser diretórios
	#[ -d "$ORIGEM"  ] || die "A origem '$ORIGEM' deve ser um diretório"
	#[ -d "$DESTINO" ] || die "O destino '$DESTINO' deve ser um diretório"

	# mesmo dir?
	[ "$ORIGEM" = "$DESTINO" ] &&
		die "A origem e o destino são o mesmo diretório"

	# o diretório de destino está vazio?
	DIR_DESTINO="$DESTINO/${ORIGEM##*/}"
	[ -d "$DIR_DESTINO" ] && [ $(sizeof $DIR_DESTINO) -gt 4 ] &&
		die "O dir de destino '$DIR_DESTINO' deveria estar vazio"

	#................................................................

	# expansão das variáveis da mensagem
	MSG=$(eval echo $MSG)

	# total a copiar (em bytes)
	TOTAL=$(sizeof $ORIGEM)

	# início da cópia, em segundo plano
	cp $ORIGEM $DESTINO &
	CPPID=$!

	# caso o usuário cancele, interrompe a cópia
	trap "kill $CPPID" 2 15

	#................................................................

	# loop de checagem de status da cópia
	(
		# enquanto o processo de cópia estiver rodando
		while running $CPPID; do
			# quanto já foi copiado?
			COPIADO=$(sizeof $DIR_DESTINO)
			# qual a porcentagem do total?
			PORCENTAGEM=$((COPIADO * 100 / TOTAL))
			# envia a porcentagem para o dialog
			echo $PORCENTAGEM
			# aguarda até a próxima checagem
			sleep $INTERVALO
		done
		# cópia finalizada, mostra a porcentagem final
		echo 100
	) | dialog --title "$TITLE" --gauge "$MSG" 8 40 0
	#................................................................
	#echo OK - Diretório copiado
}

remountpts() {
	log_wait_msg "Desmontando: sudo umount -rl /dev/pts"
	sudo umount -rl /dev/pts
	log_wait_msg "Remontando: sudo mount devpts /dev/pts -t devpts"
	sudo mount devpts /dev/pts -t devpts
}

makepy() {
	local filepy="ex.py"
	log_wait_msg "Aguarde, criando arquivo $1..."
	if [ "${1}" != "" ]; then
		filepy="${1}"
	fi

	cat >${filepy} <<"EOF"
#!/usr/bin/python3
# -*- coding: utf-8 -*-
EOF
	chmod +x ${filepy}
	log_success_msg "Feito! ${cyan}'$filepy' ${reset}criado on $PWD"
}

mkpy() { makepy "$@"; }
makescript() { makebash "$@"; }

ex() {
	if [ -f $1 ]; then
		case $1 in
		*.tar.bz2) tar xvjf $1 ;;
		*.tar.gz) tar xvzf $1 ;;
		*.tar.xz) tar Jxvf $1 ;;
		*.lz) lzip -d -v $1 ;;
		*.chi) tar Jxvf $1 ;;
		*.chi.zst) tar -xvf $1 ;;
		*.tar.zst) tar -xvf $1 ;;
		*.mz) tar Jxvf $1 ;;
		*.cxz) tar Jxvf $1 ;;
		*.chi) tar Jxvf $1 ;;
		*.tar) tar xvf $1 ;;
		*.tbz2) tar xvjf $1 ;;
		*.tgz) tar xvzf $1 ;;
		*.bz2) bunzip2 $1 ;;
		*.rar) unrar x $1 ;;
		*.gz) gunzip $1 ;;
		*.zip) unzip $1 ;;
		*.Z) uncompress $1 ;;
		*.7z) 7z x $1 ;;
		*) echo "'$1' cannot be extracted via >extract<" ;;
		esac
	else
		echo "'$1' is not a valid file!"
	fi
}

# Make your directories and files access rights sane.
sanitize() {
	chmod -R u=rwX,g=rX,o= "$@"
}

renane() {
	for f in $1; do
		mv "$f" ${f/$1/$2 }
	done
}

zerobyte() {
	for f in "$1"; do >|"$f"; done
}
export -f zerobyte

xwinserver() {
	# Windows XSrv config
	export $(dbus-launch)
	export LIBGL_ALWAYS_INDIRECT=1
	export WSL_VERSION=$(wsl.exe -l -v | grep -a '[*]' | sed 's/[^0-9]*//g')
	export WSL_HOST=$(tail -1 /etc/resolv.conf | cut -d' ' -f2)
	export DISPLAY=$WSL_HOST:0
}

void-makeramdrive() {
	sudo modprobe zram >/dev/null
	sudo umount -f /dev/ram0 >/dev/null
	[ ! -e /dev/ram0 ] && sudo mknod -m 0777 /dev/ram0 b 1 0 >/dev/null
	[ ! -e /dev/ram0 ] && sudo dd if=/dev/zero of=/dev/ram0
	[ ! -d /run/ramdrive ] && sudo mkdir -p /run/ramdrive >/dev/null
	sudo mkfs.ext4 -F /dev/ram0 -L RAMDRIVE
	sudo mount /dev/ram0 /run/ramdrive
	sudo ln -sf /run/ramdrive /ram

	#sudo vgcreate VG0 /dev/ram0
	#sudo vgextend VG0 /dev/ram1
	#sudo lvcreate -L 8G -n DADOS VG0
	#sudo mkfs.ext4 /dev/mapper/VG0-DADOS
	#sudo mount /dev/mapper/VG0-DADOS /run/ramdrive
}

#Criando um novo repositório por linha de comando
makegit() { void-makegitcodeberg "$@"; }
void-makegitcodeberg() {
	touch README.md
	git init
	git checkout -b main
	git add README.md
	git commit -m "first commit"
	git remote add origin https://codeberg.org/usuario/teste.git
	git push -u origin main
}

#Realizando push para um repositório existente por linha de comando
makepush() { void-makepush "$@"; }
void-makepush() {
	git remote add origin https://codeberg.org/usuario/teste.git
	git push -u origin main
}

ssherror() { void-correctionssherror "$@"; }
void-correctionssherror() {
	{
		echo -n 'Ciphers '
		ssh -Q cipher | tr '\n' ',' | sed -e 's/,$//'
		echo
		echo -n 'MACs '
		ssh -Q mac | tr '\n' ',' | sed -e 's/,$//'
		echo
		echo -n 'HostKeyAlgorithms '
		ssh -Q key | tr '\n' ',' | sed -e 's/,$//'
		echo
		echo -n 'KexAlgorithms '
		ssh -Q kex | tr '\n' ',' | sed -e 's/,$//'
		echo
	} >>~/.ssh/config
}

sh_ascii-lines() {
	if [[ "$LANG" =~ 'UTF-8' ]]; then
		export NCURSES_NO_UTF8_ACS=0
	else
		export NCURSES_NO_UTF8_ACS=1
	fi
}

virtualbox-add-nic() {
	for nic in {2..10}; do
		VBoxManage modifyvm "chr" --nic$nic bridged --nictype$nic 82540EM --bridgeadapter$nic enp6s0
	done
}

fcopy() {
	find . -name "*$1*" -exec cp -v {} /tmp \;
}

glibc-version() {
	sudo ldd --version
	sudo ldd $(which ls) | grep libc
	sudo /lib/libc.so.6
}

void-mkfstab() {
	#cp /proc/mounts >> /etc/fstab
	sed 's/#.*//' /etc/fstab | column --table --table-columns SOURCE,TARGET,TYPE,OPTIONS,PASS,FREQ --table-right PASS,FREQ
}
void-mapadd() { sudo kpartx -uv $1; }
void-mapdel() { sudo kpartx -dv $1; }

fid() {
	if [ $# -eq 0 ]; then
		echo 'Usage: fid "*.c"'
		echo '       fid "*"'
		echo $(find . -iname "*" -type f | wc -l)
		return
	fi
	filepath=$1
	echo $(find . -type f -iname "$filepath" | wc -l)
}

ff() {
	if [ $# -eq 0 ]; then
		echo 'Usage: ff "*.c"'
		echo '       ff "*.c" | xargs commando'
		echo '       ff "*.c" | xargs cp -v /tmp'
		sudo find . -type f -iname '*'"$*"'*' -ls
	fi
	filepath=$1
	sudo find . -type f,d,l -name "$filepath" -ls
}

ffe() {
	[ "$1" ] || {
		echo "Usage: ffe 'grep search'   | xargs comando"
		echo "       ffe 'grep search"
		echo "       ffe 'executable' | xargs rm -fv"
		echo "       ffe 'ELF|ASCII|MP4' | xargs rm -fv"
		echo "       ffe 'ELF|ASCII|MP4' | xargs cp -v /tmp"
		return
	}
	sudo find . -type f,d,l -exec file {} + | grep -iE "($1)" | cut -d: -f1
}

ffs() {
	[ "$1" ] || {
		echo "Usage: ffs 'search' '*.doc' | xargs comando"
		echo "       ffs 'def |function ' '*.prg'"
		echo "       ffs '#include' '*.*'"
		echo "       ffs 'search|search|texto' '*.txt' | xargs rm -fv"
		echo "       ffs 'ELF|ASCII|MP4' '*.doc' | xargs cp -v /tmp"
		return
	}
	sudo grep -r --color=auto -n -iE "($1)" $2
	sudo find . -type f -iname '*'"$2"'*' -exec grep --color=auto -n -iE "($1)" {} +
}

void-xcopynparallel() {
	find $1 | parallel -j+0 cp -Rpvan {} $2
}

mks() {
	makebash "$@"
}

makebash() {
	local red=$(tput bold)$(tput setaf 196)
	local cyan=$(tput setaf 6)
	local reset=$(tput sgr0)
	local prg='script.sh'

	if test $# -ge 1; then
		prg="$1"
		[[ -e "$prg" ]] && {
			log_err "${red}error: ${reset}Arquivo ${cyan}'$1'${reset} já existe"
			return
		}
	fi
	log_msg "Criando script bash ${cyan}'$prg'${reset} on $PWD"
	cat >"$prg" <<-EOF
		#!/usr/bin/env bash
		# -*- coding: utf-8 -*-
		# shellcheck shell=bash disable=SC1091,SC2039,SC2166,SC2034
		#
		#  $prg
		#  Created: $(date)
		#  Altered: $(date)
		#  Updated: $(date)
		#
		#  Copyright (c) 2019-$(date +'%Y'), Vilmar Catafesta <vcatafesta@gmail.com>
		#  Copyright (c) 2019-$(date +'%Y'), ChiliLinux Development Team <https://chililinux.com> <https://github.com/chililinux>
		#  Assembled By Vilmar Catafesta for the ChiliLinux project.
		#  All rights reserved.
		#
		#  Redistribution and use in source and binary forms, with or without
		#  modification, are permitted provided that the following conditions
		#  are met:
		#  1. Redistributions of source code must retain the above copyright
		#     notice, this list of conditions and the following disclaimer.
		#  2. Redistributions in binary form must reproduce the above copyright
		#     notice, this list of conditions and the following disclaimer in the
		#     documentation and/or other materials provided with the distribution.
		#
		#  THIS SOFTWARE IS PROVIDED BY Vilmar Catafesta ''AS IS'' AND ANY EXPRESS OR
		#  IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
		#  OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
		#  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
		#  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
		#  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
		#  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
		#  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
		#  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
		#  THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
		##############################################################################
		export LANGUAGE="\${LANGUAGE:-pt_BR}"
		export TEXTDOMAINDIR=/usr/share/locale
		export TEXTDOMAIN=${prg%.*}
	EOF
	cat >>"$prg" <<-'EOF'

		#debug
		export PS4='${red}${0##*/}${green}[$FUNCNAME]${pink}[$LINENO]${reset}'
		#set -x
		#set -e
		#set -euo pipefail
		shopt -s extglob

		#system
		declare APP="${0##*/}"
	EOF
	cat >>"$prg" <<-EOF
		declare _VERSION_="0.$(date +'%m').$(date +'%d')-$(date +'%Y%m%d')"
	EOF
	cat >>"$prg" <<-'EOF'
		declare APPDESC="$APP - Wraper for "
		declare distro="$(uname -n)"
		declare -A PACKAGEDEP=(
		  [gettext]=gettext
		  [dd]=coreutils
		  [hdparm]=hdparm
		  [fio]=fio
		  [tput]=ncurses
		)
		# Mapa: [distro]="lista de pacotes"
		declare -A DISTRO_PKGS=(
		  ["void"]="gettext rsync parted curl xz lvm2"
		  ["void-live"]="gettext rsync parted curl xz lvm2"
		  ["voidlinux"]="gettext rsync parted curl xz lvm2"
		  ["chili"]="gettext rsync parted curl xz"
		  ["chililinux"]="gettext rsync parted curl xz"
		  ["arch"]="gettext rsync parted curl xz"
		  ["manjaro"]="gettext rsync parted curl xz"
		  ["debian"]="gettext-base rsync parted curl xz-utils"
		)
		# Mapa: [distro]="comando de instalação"
		declare -A DISTRO_MGR=(
		  ["void"]="xbps-install -Syf"
		  ["void-live"]="xbps-install -Syf"
		  ["voidlinux"]="xbps-install -Syf"
		  ["chili"]="pacman -Sy --needed --noconfirm"
		  ["chililinux"]="pacman -Sy --needed --noconfirm"
		  ["arch"]="pacman -Sy --needed --noconfirm"
		  ["manjaro"]="pacman -Sy --needed --noconfirm"
		  ["debian"]="apt-get install -y"
		)
		# Mapa: [distro]="lista de pacotes"
		declare -A DISTRO_PKGS=(
		  ["void"]="gettext rsync parted curl xz lvm2"
		  ["void-live"]="gettext rsync parted curl xz lvm2"
		  ["voidlinux"]="gettext rsync parted curl xz lvm2"
		  ["chili"]="gettext rsync parted curl xz"
		  ["chililinux"]="gettext rsync parted curl xz"
		  ["arch"]="gettext rsync parted curl xz"
		  ["biglinux"]="gettext rsync parted curl xz"
		  ["manjaro"]="gettext rsync parted curl xz"
		  ["debian"]="gettext-base rsync parted curl xz-utils"
		)
		# Mapa: [distro]="comando de instalação"
		declare -A DISTRO_MGR=(
		  ["void"]="xbps-install -Syf"
		  ["void-live"]="xbps-install -Syf"
		  ["voidlinux"]="xbps-install -Syf"
		  ["chili"]="pacman -Sy --needed --noconfirm"
		  ["chililinux"]="pacman -Sy --needed --noconfirm"
		  ["arch"]="pacman -Sy --needed --noconfirm"
		  ["viglinux"]="pacman -Sy --needed --noconfirm"
		  ["manjaro"]="pacman -Sy --needed --noconfirm"
		  ["debian"]="apt-get install -y"
		)
		declare dialogRcFile="$HOME/.dialogrc"

		cleanup() { rm -f "$dialogRcFile"; }
		#trap cleanup EXIT
    MostraErro() { echo "erro: ${red}$1${reset} => comando: ${cyan}'$2'${reset} => result=${yellow}$3${reset}";}
    trap 'MostraErro "${APP[$FUNCNAME][$LINENO]}" "$BASH_COMMAND" "$?"; exit 1' ERR

		sh_check_terminal() { [ ! -t 1 ] && use_color=false; }

		set_varcolors() {
		  sh_check_terminal
		  # does the terminal support true-color?
		  if [[ -n "$(command -v "tput")" ]]; then
		    #tput setaf 127 | cat -v  #capturar saida
		    : "${RED=$(tput bold)$(tput setaf 196)}"
		    : "${GREEN=$(tput bold)$(tput setaf 2)}"
		    : "${YELLOW=$(tput bold)$(tput setaf 3)}"
		    : "${BLUE=$(tput setaf 4)}"
		    : "${PURPLE=$(tput setaf 125)}"
		    : "${CYAN=$(tput setaf 6)}"
		    : "${NC=$(tput sgr0)}"
		    : "${RESET=$(tput sgr0)}"
		    : "${BOLD=$(tput bold)}"
		    : "${black=$(tput bold)$(tput setaf 0)}"
		    : "${reverse=$(tput rev)}"
		    : "${branca=${black}$(tput setab 7)}"

		    : "${reset=$(tput sgr0)}"
		    : "${rst=$(tput sgr0)}"
		    : "${bold=$(tput bold)}"
		    : "${underline=$(tput smul)}"
		    : "${nounderline=$(tput rmul)}"
		    : "${reverse=$(tput rev)}"

		    : "${black=$(tput bold)$(tput setaf 0)}"
		    : "${red=$(tput bold)$(tput setaf 196)}"
		    : "${green=$(tput bold)$(tput setaf 2)}"
		    : "${yellow=$(tput bold)$(tput setaf 3)}"
		    : "${blue=$(tput setaf 27)}"
		    : "${pink=$(tput setaf 5)}"
		    : "${magenta=$(tput setaf 5)}"
		    : "${cyan=$(tput setaf 6)}"
		    : "${white=$(tput setaf 7)}"
		    : "${gray=$(tput setaf 8)}"
		    : "${light_red=$(tput setaf 9)}"
		    : "${light_green=$(tput setaf 10)}"
		    : "${light_yellow=$(tput setaf 11)}"
		    : "${light_blue=$(tput setaf 12)}"
		    : "${light_magenta=$(tput setaf 13)}"
		    : "${light_cyan=$(tput setaf 14)}"
		    : "${light_white=$(tput setaf 15)}"
		    : "${orange=$(tput setaf 202)}"
		    : "${purple=$(tput setaf 125)}"
		    : "${violet=$(tput setaf 61)}"

		    # Definir cores de fundo
		    : "${preto=$(tput setab 0)}"
		    : "${vermelho=$(tput setab 196)}"
		    : "${verde=$(tput setab 2)}"
		    : "${amarelo=$(tput setab 3)}"
		    : "${azul=$(tput setab 20)}"
		    : "${roxo=$(tput setab 5)}"
		    : "${ciano=$(tput setab 6)}"
		    : "${branca="${black}$(tput setab 7)"}"
		    : "${cinza=$(tput setab 8)}"
		    : "${laranja=$(tput setab 202)}"
		    : "${roxa=$(tput setab 125)}"
		    : "${violeta=$(tput setab 61)}"

		    : "${COL_NC='\e[0m'}" # No Color
		    : "${COL_LIGHT_GREEN='\e[1;32m'}"
		    : "${COL_LIGHT_RED='\e[1;31m'}"
		    : "${DONE="${COL_LIGHT_GREEN} done!${COL_NC}"}"
		    : "${OVER="\\r\\033[K"}"
		    : "${DOTPREFIX="  ${black}::${reset} "}"
		    : "${clrkey=${light_white}}"
		    : "${TICK="${clrkey}[${green}✓✓✓${clrkey}]${rst}"}"
		    : "${CROSS="${clrkey}[${red}✗✗✗${clrkey}]${rst}"}"
		    : "${MID="${clrkey}[${red}✗✗${green}✓${clrkey}]${rst}"}"
		    : "${WARN="${clrkey}[${yellow}⚠  ${clrkey}]${yellow}"}"
		    : "${INFO="${clrkey}[${yellow}➡  ${clrkey}]${rst}"}"

		    # dialog colors
		    REVERSE="\Zr"
		    UNDERLINE="\Zu"
		    BOLD="\Zb"
		    RESET="\Zn"
		    BLACK="\Z0"
		    YELLOW="\Z3"
		    AMARELO="\Zb\Z3"
		    WHITE="\Z7"
		    BLUE="\Z4"
		    AZUL="\Zb\Z4"
		    CYAN="\Z6"
		    RED="\Z1"
		    GREEN="\Z2"
		    MAGENTA="\Z5"
		  else
		    unset_varcolors
		  fi
		}

		unset_varcolors() {
		  unset RED GREEN YELLOW BLUE PURPLE CYAN NC RESET BOLD
		  unset reset rst bold underline nounderline reverse
		  unset black red green yellow blue magenta cyan white gray orange purple violet
		  unset light_red light_green light_yellow light_blue light_magenta light_cyan light_white
		  unset preto vermelho verde amarelo azul roxo ciano branca cinza laranja roxa violeta
		  TICK="${white}[${verde}✓${rst}${white}]${rst}"
		  CROSS="${white}[${roxa}✗${rst}${white}]${rst}"
		  INFO="${white}[${cinza}i${rst}${white}]${rst}"
		}

		sh_create_dialogrc() {
		  cat > "$dialogRcFile" <<EOF_DIALOGRC
		screen_color = (white,black,off)
		dialog_color = (white,black,off)
		title_color = (green,black,on)
		border_color = dialog_color
		shadow_color = (black,black,on)
		button_inactive_color = dialog_color
		button_key_inactive_color = dialog_color
		button_label_inactive_color = dialog_color
		button_active_color = (black,green,on)
		button_key_active_color = button_active_color
		button_label_active_color = (white,green,on)
		tag_key_selected_color = (white,green,on)
		item_selected_color = tag_key_selected_color
		form_text_color = (green,black,on)
		form_item_readonly_color = (cyan,black,on)
		itemhelp_color = (white,green,off)
		inputbox_color = dialog_color
		inputbox_border_color = dialog_color
		searchbox_color = dialog_color
		searchbox_title_color = title_color
		searchbox_border_color = border_color
		position_indicator_color = title_color
		menubox_color = dialog_color
		menubox_border_color = border_color
		item_color = dialog_color
		tag_color = title_color
		tag_selected_color = button_label_active_color
		tag_key_color = button_key_inactive_color
		check_color = dialog_color
		check_selected_color = button_active_color
		uarrow_color = screen_color
		darrow_color = screen_color
		form_active_text_color = button_active_color
		gauge_color = title_color
		border2_color = dialog_color
		searchbox_border2_color = dialog_color
		menubox_border2_color = dialog_color
		separate_widget = ''
		tab_len = 0
		visit_items = off
		use_shadow = off
		use_colors = on
		EOF_DIALOGRC
		  export DIALOGRC="$dialogRcFile"
		}

		# Teste se o terminal suporta caracteres gráficos estendidos
		sh_ascii_lines() {
		  #Isso força o dialog a usar caracteres ASCII básicos para as bordas.
		  #if [[ "$LANG" =~ 'UTF-8' ]]; then
		  [[ "$(printf '\u250C')" == "┌" ]]
		  export NCURSES_NO_UTF8_ACS=$((!$?))
		}

		sh_setEnvironment() {
		  [[ ! -e "$dialogRcFile" ]] && sh_create_dialogrc
		  sh_ascii_lines
		}

		sh_checkroot() {
		  (( EUID != 0 )) && elevate_to_root "$@" || return 0
		}

		elevate_to_root() {
		  log_ok "This script must be run as root. Elevating privileges..."
		  ccabec+='root [elevated]'
		  # Tenta usar sudo primeiro (caso esteja configurado)
		  if command -v sudo >/dev/null 2>&1; then
		    exec sudo bash "$0" "$@"
		  fi
		  # Se sudo falhar, tenta su
		  if command -v su >/dev/null 2>&1; then
		    exec su -c "$0 $*"
		  fi
		  die "Error: Unable to elevate privileges. Run manually as root."
		}

    replicate() {
      local char="${1:-#}"
      local nsize="${2:-$(tput cols)}"
      # Gera linha com substituição direta sem forks extras
      printf -v _line "%*s" "$nsize" ""
      printf '%b\n' "${blue}${_line// /$char}${reset}"
    }

		readconf() {
		  local msg="$1"
		  local color="${2:-${yellow}}"

		  echo -n -e "$color"
		  if [[ $LC_DEFAULT -eq 0 ]]; then
		    read -r -p "$msg [N/s] :"
		  else
		    read -r -p "$msg [N/y] :"
		  fi
		  echo -n -e "$reset"
		  case "${REPLY^}" in
		  [SY]) return 0 ;;
		  "") return 1 ;;
		  *) return 1 ;;
		  esac
		}

		debug() {
		# dialog
		  whiptail --fb  --clear --backtitle "[debug]$0" --title "[debug]$0" --yesno "${*}\n"  0 40
		  local result="$?"
		  ((result)) && exit "$result"
		  return "$result"
		}

		# ===================================================================
		# Funções auxiliares
		# ===================================================================
		run_cmd() {
		  local cmd="$*"

		  if [[ $DRYRUN -eq 1 ]]; then
		    msg "${cyan}[DRY-RUN]${rst} ${cmd}"
		  else
		    echo -e "  [⚙  ] ${cyan}${cmd}${rst}"
		    # Executa o comando, falha se houver erro
		    # Redireciona stderr para /dev/null apenas para mkdir -p e ummount -R
		    if [[ "$cmd" =~ ^mkdir\ -p ]] || [[ "$cmd" =~ ^umount\ -R ]]; then
		      eval "$cmd" &>/dev/null || true
		    else
		      eval "$cmd" || log_warn_tab "Falha ao executar: $cmd"
		    fi
		  fi
		}

		sh_copyright() {
		  cat <<-EOF-COPY
		${bold}${cyan}${0##*/} v${_VERSION_}${rst}
		${bold}${cyan}${APPDESC}${rst}
		${bold}${orange}Copyright (c) 2019-2026, ${reset}ChiliLinux Development Team <https://chililinux.com> <https://github.com/chililinux>
		${bold}${orange}Copyright (c) 2019-2026, ${reset}Vilmar Catafesta <vcatafesta@gmail.com>${black}
		EOF-COPY
		}

		sh_version() {
		  cat <<-EOF-VERSION
		  $(sh_copyright)

		        $(gettext "Este é um software livre: você é livre para alterá-lo e redistribuí-lo.")
		        $(gettext "O $APP é disponibilizado para você sob a ${yellow}Licença MIT${black}, e")
		        $(gettext "inclui software de código aberto sob uma variedade de outras licenças.")
		        $(gettext "Você pode ler instruções sobre como baixar e criar para você mesmo")
		        $(gettext "o código fonte específico usado para criar esta cópia.")
		        ${red}$(gettext "Este programa vem com absolutamente NENHUMA garantia.")${reset}
		EOF-VERSION
		}

		msg()          { echo -e "${INFO} ${*}${reset}"; }
		log_ok()       { echo -e "${TICK} ${*}${reset}"; }
		log_err()      { echo -e "${CROSS} ${*}${reset}"; }
		log_mid()      { echo -e "${MID} ${*}${reset}"; }
		log_warn()     { echo -e "${WARN} ${*}${reset}"; }
		msg_tab()      { echo -e "  ${INFO} ${*}${reset}"; }
		log_ok_tab()   { echo -e "  ${TICK} ${*}${reset}"; }
		log_err_tab()  { echo -e "  ${CROSS} ${*}${reset}"; }
		log_mid_tab()  { echo -e "  ${MID} ${*}${reset}"; }
		log_warn_tab() { echo -e "  ${WARN} ${*}${reset}"; }
		die() {
		  echo -e "${CROSS} ${red}${*}${reset}"
		  exit 1
		}

		detect_distro() {
		  local id=""

		  if [[ -r /etc/os-release ]]; then
		    # Lê ID=void|arch|debian|... exatamente como a distro declara
		    id=$(grep -E '^ID=' /etc/os-release | cut -d= -f2 | tr -d '"')
		  elif [[ -r /usr/lib/os-release ]]; then
		    id=$(grep -E '^ID=' /usr/lib/os-release | cut -d= -f2 | tr -d '"')
		  else
		    echo "unknown"
		    return
		  fi
		  echo "$id"
		}

		sh_checkDependencies() {
		  local aBlock_files=()
		  local d
		  local pkg
		  local errorFound=false
		  declare -a missing
		  local DISTRO
		  local cmsgNot
		  local cmsgPkg
		  DISTRO="$(detect_distro)"
		  cmsgNot="$(gettext "Não foi possível encontrar o comando")"
		  cmsgPkg="$(gettext "instalar pacote")"

		  for d in "${!PACKAGEDEP[@]}"; do
		    if ! command -v "$d" &>/dev/null; then
		      pkg="${PACKAGEDEP[$d]}"
		        log_err "${red}Error${rst}: ${cmsgNot} $(printf "${cyan}%-15s${rst}\n" "$d") -> ${cmsgPkg} ${cyan}${pkg}${rst}"
		        missing+=("${pkg}")
		        errorFound=true
		    else
		      #log_msg "Check: ${cyan}$d"
		      :
		    fi
		  done

		  if $errorFound; then
		    replicate '='
		    echo "${yellow}             $(gettext "IMPOSSÍVEL CONTINUAR")"
		    echo "${black}$(gettext "Este script precisa dos comandos listados acima")"
		    echo "${black}$(gettext "Instale-os e/ou verifique se eles estão em seu") ${red}\$PATH${reset}"
		    replicate '='

		    local cmd="${DISTRO_MGR[$DISTRO]}"
		    #local pkgs="${DISTRO_PKGS[$DISTRO]}"
		    local pkgs="${missing[@]}"

		    msg_info "Distro detectada: ${cyan}$DISTRO${rst}"
		    if readconf "$(gettext "Instalar dependências base agora?")"; then
		      echo -e "${blue}::${rst} $(gettext "Preparando ambiente para") ${green}${DISTRO}${reset}..."
		      # Execução dinâmica: $cmd (gerenciador) + $pkgs (lista de pacotes)
		      if ! $cmd $pkgs; then
		        echo
		        echo -e "${red}$(gettext "Erro Crítico:")${rst} $(gettext "A instalação dos pacotes básicos falhou.")"
		        exit 1
		      fi
		        echo
		        echo -e "${green}$(gettext "Sucesso:")${reset} $(gettext "Dependências instaladas.")"
		      fi
		    fi
		}

		# configure ambiente
		set_varcolors
		sh_checkroot "$@"

		##########################################################################################################
	EOF

	sudo chmod +x $prg
	#echo $(replicate '=' 80)
	#cat $prg
	#echo $(replicate '=' 80)
	log_msg "Feito! arquivo ${yellow}'$prg' ${reset}criado on $PWD"
} # makebash

cpc() {
	origem=$(cut -d':' -f1 <<<"$1")
	destino=$(awk -F'/usr' '{print "/usr"$2}' <<<"$1" | cut -d':' -f1)
	sudo cp -v $origem $destino
}

xcopyc() {
	local args=("$@")
	if [ "${#args[@]}" -lt 2 ]; then
		echo "Descrição: Esta função copia arquivos e diretórios da origem para o destino preservando a estrutura de diretórios."
		echo -e "\e[1;31mErro: Esta função requer exatamente dois parâmetros: origem e destino.\e[0m"
		echo "   Uso: xcopyc <origem> <destino>"
		echo "        xcopyc *.log   /lixo/archived"
		echo "        xcopyc .       /lixo/archived"
		echo "        xcopyc $HOME/files/.  /lixo/archived"
		return 1
	fi
	local origem="${*:1:$#-1}"
	local destino="${*: -1}"
	set -f
	eval "rsync -av --perms --progress --relative $origem \"$destino\""
	set +f
}

limpa() {
	local cdir=$(ls -l | awk '/^d/ {print $9}')
	local cor_blue="\e[1;34m"
	local cor_orange=$(tput setaf 166)
	echo -n -e ${cor_blue}
	log_success_msg2 "Iniciando limpeza..."
	for i in $cdir; do
		log_info_msg "${cor_blue}Removendo diretorio temporario => ${cor_orange}$i"
		sudo rm -rfd $i/
		evaluate_retval
	done
	log_success_msg2 "Feito."
}
