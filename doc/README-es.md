# void-install - Instalador brasileño de VOID Linux
## Descargar:
- 0 - usando distribución VOID
```bash
{
  echo 'repository=https://repo-fastly.voidlinux.org/current'
  echo 'repository=https://void.chililinux.com/voidlinux/current'
} | sudo tee /etc/xbps.d/00-repository-main.conf
sudo xbps-install -Syu xbps
sudo xbps-install -Syu libssh2
sudo xbps-install -Syf void-install
sudo void-install
```

- 1 - usando git
	- clon de git --profundidad=1 https://github.com/voidlinuxbr/void-install

- 2 - usando curl/wget stdin
	- bash <(curl -s -L https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
	- bash <(wget -q -O - https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
	- rizo -s -O https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh | intento
	- wget -q -O-https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh | intento

- 3 - usando curl/wget
	- rizo -O https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
	- wget https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
	- chmod +x instalar.sh
	- instalación de bash.sh

## Instalación (después de la descarga):
- 1 - usando hacer
	- sudo hacer instalar

- 2 - ejecutándose en el repositorio local
	- ./instalación nula

Ejemplos
--------

Ejecute `void-install` sin ningún argumento para obtener ayuda.

<img alt="void-install-help" src="assets/void-install-help.jpg" width="600" />

**Nota:** Se requieren `sudo` o privilegios escalados para ejecutar el instalador.

Ejecute `void-install -i` para iniciar el instalador y elegir el idioma.

<img alt="01" src="activos/01.png" ancho="600" />
<img alt="02" src="activos/02.png" ancho="600" />
<img alt="03" src="activos/03.png" ancho="600" />
<img alt="04" src="activos/04.png" ancho="600" />
<img alt="05" src="activos/05.png" ancho="600" />
<img alt="06" src="assets/06.png" ancho="600" />
<img alt="07" src="assets/07.png" ancho="600" />
<img alt="08" src="activos/08.png" ancho="600" />
<img alt="09" src="activos/09.png" ancho="600" />
<img alt="10" src="activos/10.png" ancho="600" />
<img alt="11" src="activos/11.png" ancho="600" />
<img alt="12" src="activos/12.png" ancho="600" />
<img alt="13" src="activos/13.png" ancho="600" />
<img alt="14" src="assets/14.png" ancho="600" />
<img alt="15" src="activos/15.png" ancho="600" />
<img alt="16" src="activos/16.png" ancho="600" />
<img alt="17" src="activos/17.png" ancho="600" />
<img alt="18" src="activos/18.png" ancho="600" />
<img alt="19" src="activos/19.png" ancho="600" />
<img alt="20" src="activos/20.png" ancho="600" />
<img alt="21" src="activos/21.png" ancho="600" />
<img alt="22" src="activos/22.png" ancho="600" />
<img alt="23" src="activos/23.png" ancho="600" />
<img alt="24" src="activos/24.png" ancho="600" />
