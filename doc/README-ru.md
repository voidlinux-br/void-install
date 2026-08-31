<div align="center">

# 🔵 void-install

**Установщик сообщества VoidBR, ориентированный на практичность, автоматизацию и современный опыт установки.**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)](ЛИЦЕНЗИЯ)

</div>

---

# Установка

## Способ 1 — репозитории VoidBR (рекомендуется)

Использование официального ISO-образа Void Linux:

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

## Способ 2 — Git

```bash
git clone --depth=1 https://github.com/voidlinuxbr/void-install
cd void-install

# Executar localmente sem instalar:
sudo ./void-install

# instalar:
sudo make install

```

---

## Способ 3. Быстрая установка через Curl/wget.

### завиток

```bash
bash <(curl -sL https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
```

### wget

```bash
bash <(wget -qO- https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
```

---

## Метод 4 — Загрузите руководство по созданию сценария

### завиток

```bash
curl -O https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
```

### wget

```bash
wget https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
```

Затем запустите:

```bash
chmod +x install.sh
bash install.sh
```

---

# Использовать

Запустите установщик:

```bash
sudo void-install
```

> Для установки системы необходимы `sudo` или повышенные привилегии.

---

# Скриншоты

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

# Проект

Гитхаб:
https://github.com/voidlinuxbr/void-install
