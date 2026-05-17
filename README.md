# void-install — Instalador brasileiro do Void Linux

Instalador da comunidade VoidBR para o VOID Linux, focado em praticidade, automação e experiência moderna de instalação.

---

# Instalação

## Método 1 — Repositórios VoidBR (recomendado)

Usando a ISO oficial do Void Linux:

```bash
{
  echo 'repository=https://void.voidbr.org/voidlinux/current'
  echo 'repository=https://void.voidbr.org/voidlinux/extra'
  echo 'repository=https://repo-fastly.voidlinux.org/current'
} | sudo tee /etc/xbps.d/00-repository-main.conf

sudo xbps-install -Syu xbps libssh2 void-install

sudo void-install
```

---

## Método 2 — Git

```bash
git clone --depth=1 https://github.com/voidlinuxbr/void-install
cd void-install

sudo make install
```

Executar localmente sem instalar:

```bash
./void-install
```

---

## Método 3 — Instalação rápida via curl/wget

### curl

```bash
bash <(curl -sL https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
```

### wget

```bash
bash <(wget -qO- https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
```

---

## Método 4 — Download manual do script

### curl

```bash
curl -O https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
```

### wget

```bash
wget https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
```

Depois execute:

```bash
chmod +x install.sh
bash install.sh
```

---

# Uso

Iniciar instalador:

```bash
sudo void-install
```

> `sudo` ou privilégios elevados são necessários para executar a instalação do sistema.

---

# Screenshots

<img alt="01" src="assets/01.png" width="700" />
<img alt="02" src="assets/02.png" width="700" />
<img alt="03" src="assets/03.png" width="700" />
<img alt="04" src="assets/04.png" width="700" />
<img alt="05" src="assets/05.png" width="700" />
<img alt="06" src="assets/06.png" width="700" />
<img alt="07" src="assets/07.png" width="700" />
<img alt="08" src="assets/08.png" width="700" />
<img alt="09" src="assets/09.png" width="700" />
<img alt="10" src="assets/10.png" width="700" />
<img alt="11" src="assets/11.png" width="700" />
<img alt="12" src="assets/12.png" width="700" />
<img alt="13" src="assets/13.png" width="700" />
<img alt="14" src="assets/14.png" width="700" />
<img alt="15" src="assets/15.png" width="700" />
<img alt="16" src="assets/16.png" width="700" />
<img alt="17" src="assets/17.png" width="700" />
<img alt="18" src="assets/18.png" width="700" />
<img alt="19" src="assets/19.png" width="700" />
<img alt="20" src="assets/20.png" width="700" />
<img alt="21" src="assets/21.png" width="700" />
<img alt="22" src="assets/22.png" width="700" />
<img alt="23" src="assets/23.png" width="700" />
<img alt="24" src="assets/24.png" width="700" />

---

# Projeto

GitHub:
https://github.com/voidlinuxbr/void-install
