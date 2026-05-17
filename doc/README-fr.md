# void-install — Programme d'installation de Linux Void brésilien

Programme d'installation communautaire VoidBR pour VOID Linux, axé sur la praticité, l'automatisation et l'expérience d'installation moderne.

---

# Installation

## Méthode 1 — Dépôts VoidBR (recommandé)

Utilisation de l'ISO officielle de Void Linux :

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

## Méthode 2 – Git

```bash
git clone --depth=1 https://github.com/voidlinuxbr/void-install
cd void-install

sudo make install
```

Exécutez localement sans installer :

```bash
./void-install
```

---

## Méthode 3 — Installation rapide via curl/wget

### boucle

```bash
bash <(curl -sL https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
```

### wget

```bash
bash <(wget -qO- https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
```

---

## Méthode 4 — Télécharger le manuel du script

### boucle

```bash
curl -O https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
```

### wget

```bash
wget https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
```

Puis exécutez :

```bash
chmod +x install.sh
bash install.sh
```

---

# Utiliser

Démarrer le programme d'installation :

```bash
sudo void-install
```

> `sudo` ou des privilèges élevés sont requis pour effectuer l'installation du système.

---

# Captures d'écran

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

# Projet

GitHub :
https://github.com/voidlinuxbr/void-install
