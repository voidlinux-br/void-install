# void-install: programma di installazione brasiliano di Void Linux

Programma di installazione della community VoidBR per VOID Linux, incentrato sulla praticità, l'automazione e l'esperienza di installazione moderna.

---

# Installazione

## Metodo 1: repository VoidBR (consigliato)

Utilizzando l'ISO ufficiale di Void Linux:

```bash
{
  echo 'repository=https://repo-fastly.voidlinux.org/current'
  echo 'repository=https://void.voidbr.org/voidlinux/current'
  echo 'repository=https://void.voidbr.org/voidlinux/extra'
} | sudo tee /etc/xbps.d/00-repository-main.conf

sudo xbps-install -Syu xbps
sudo xbps-install -Syu libssh2
sudo xbps-install -Syf void-install

sudo void-install
```

---

## Metodo 2: Git

```bash
git clone --depth=1 https://github.com/voidlinuxbr/void-install
cd void-install

sudo make install
```

Esegui localmente senza installare:

```bash
./void-install
```

---

## Metodo 3: installazione rapida tramite curl/wget

### arricciare

```bash
bash <(curl -sL https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
```

### wget

```bash
bash <(wget -qO- https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
```

---

## Metodo 4 — Scarica il manuale dello script

### arricciare

```bash
curl -O https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
```

### wget

```bash
wget https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
```

Quindi esegui:

```bash
chmod +x install.sh
bash install.sh
```

---

# Utilizzo

Avvia il programma di installazione:

```bash
sudo void-install
```

> Per eseguire l'installazione del sistema sono necessari `sudo` o privilegi elevati.

---

# Schermate

<img alt="01" src="assets/01.png" larghezza="700" />
<img alt="02" src="assets/02.png" larghezza="700" />
<img alt="03" src="assets/03.png" larghezza="700" />
<img alt="04" src="assets/04.png" larghezza="700" />
<img alt="05" src="assets/05.png" larghezza="700" />
<img alt="06" src="assets/06.png" larghezza="700" />
<img alt="07" src="assets/07.png" larghezza="700" />
<img alt="08" src="assets/08.png" larghezza="700" />
<img alt="09" src="assets/09.png" larghezza="700" />
<img alt="10" src="assets/10.png" larghezza="700" />
<img alt="11" src="assets/11.png" larghezza="700" />
<img alt="12" src="assets/12.png" larghezza="700" />
<img alt="13" src="assets/13.png" larghezza="700" />
<img alt="14" src="assets/14.png" larghezza="700" />
<img alt="15" src="assets/15.png" larghezza="700" />
<img alt="16" src="assets/16.png" larghezza="700" />
<img alt="17" src="assets/17.png" larghezza="700" />
<img alt="18" src="assets/18.png" larghezza="700" />
<img alt="19" src="assets/19.png" larghezza="700" />
<img alt="20" src="assets/20.png" larghezza="700" />
<img alt="21" src="assets/21.png" larghezza="700" />
<img alt="22" src="assets/22.png" larghezza="700" />
<img alt="23" src="assets/23.png" larghezza="700" />
<img alt="24" src="assets/24.png" larghezza="700" />

---

# Progetto

GitHub:
https://github.com/voidlinuxbr/void-install
