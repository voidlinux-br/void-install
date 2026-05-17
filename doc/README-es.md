# void-install — Instalador brasileño de Void Linux

Instalador de la comunidad VoidBR para VOID Linux, enfocado en la practicidad, la automatización y la experiencia de instalación moderna.

---

# Instalación

## Método 1: Repositorios VoidBR (recomendado)

Usando la ISO oficial de Void Linux:

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

## Método 2: Git

```bash
git clone --depth=1 https://github.com/voidlinuxbr/void-install
cd void-install

sudo make install
```

Ejecutar localmente sin instalar:

```bash
./void-install
```

---

## Método 3: instalación rápida mediante curl/wget

### rizo

```bash
bash <(curl -sL https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
```

### obtener

```bash
bash <(wget -qO- https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
```

---

## Método 4: descargar el manual y el script

### rizo

```bash
curl -O https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
```

### obtener

```bash
wget https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
```

Luego ejecuta:

```bash
chmod +x install.sh
bash install.sh
```

---

# Usar

Iniciar el instalador:

```bash
sudo void-install
```

> Se requieren `sudo` o privilegios elevados para realizar la instalación del sistema.

---

# Capturas de pantalla

<img alt="01" src="activos/01.png" ancho="700" />
<img alt="02" src="activos/02.png" ancho="700" />
<img alt="03" src="activos/03.png" ancho="700" />
<img alt="04" src="activos/04.png" ancho="700" />
<img alt="05" src="assets/05.png" ancho="700" />
<img alt="06" src="assets/06.png" ancho="700" />
<img alt="07" src="assets/07.png" ancho="700" />
<img alt="08" src="activos/08.png" ancho="700" />
<img alt="09" src="assets/09.png" ancho="700" />
<img alt="10" src="activos/10.png" ancho="700" />
<img alt="11" src="activos/11.png" ancho="700" />
<img alt="12" src="assets/12.png" ancho="700" />
<img alt="13" src="assets/13.png" ancho="700" />
<img alt="14" src="assets/14.png" ancho="700" />
<img alt="15" src="activos/15.png" ancho="700" />
<img alt="16" src="assets/16.png" ancho="700" />
<img alt="17" src="assets/17.png" ancho="700" />
<img alt="18" src="assets/18.png" ancho="700" />
<img alt="19" src="assets/19.png" ancho="700" />
<img alt="20" src="activos/20.png" ancho="700" />
<img alt="21" src="activos/21.png" ancho="700" />
<img alt="22" src="assets/22.png" ancho="700" />
<img alt="23" src="assets/23.png" ancho="700" />
<img alt="24" src="assets/24.png" ancho="700" />

---

# Proyecto

GitHub:
CHILE_REF_0_CHILI
