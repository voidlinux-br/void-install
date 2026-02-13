# void-install - instalador brasileiro do VOID Linux
## Download:
- 0 - usando distribuição VOID
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

- 1 – usando git
	- git clone --profundidade=1 https://github.com/voidlinuxbr/void-install

- 2 - usando curl/wget stdin
	- bash <(curl -s -L https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
	- bash <(wget -q -O - https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
	- curl -s -O https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh | festa
	- wget -q -O - https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh | festa

- 3 - usando curl/wget
	- curl -O https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
	- wgethttps://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
	- chmod +x instalar.sh
	- bash instalar.sh

## Instalação (após download):
- 1 - usando make
	- sudo make install

- 2 – rodando em repositório local
	- ./void-install

Exemplos
--------

Execute `void-install` sem argumentos para obter ajuda.

<img alt="void-install-help" src="assets/void-install-help.jpg" width="600" />

**Nota:** `sudo` ou privilégios escalonados são necessários para realmente executar o instalador.

Execute `void-install -i` para iniciar o instalador e escolher o idioma.

<img alt="01" src="assets/01.png" largura="600" />
<img alt="02" src="assets/02.png" largura="600" />
<img alt="03" src="assets/03.png" largura="600" />
<img alt="04" src="assets/04.png" largura="600" />
<img alt="05" src="assets/05.png" largura="600" />
<img alt="06" src="assets/06.png" largura="600" />
<img alt="07" src="assets/07.png" largura="600" />
<img alt="08" src="assets/08.png" largura="600" />
<img alt="09" src="assets/09.png" largura="600" />
<img alt="10" src="assets/10.png" largura="600" />
<img alt="11" src="assets/11.png" largura="600" />
<img alt="12" src="assets/12.png" largura="600" />
<img alt="13" src="assets/13.png" largura="600" />
<img alt="14" src="assets/14.png" largura="600" />
<img alt="15" src="assets/15.png" largura="600" />
<img alt="16" src="assets/16.png" largura="600" />
<img alt="17" src="assets/17.png" largura="600" />
<img alt="18" src="assets/18.png" largura="600" />
<img alt="19" src="assets/19.png" largura="600" />
<img alt="20" src="assets/20.png" largura="600" />
<img alt="21" src="assets/21.png" largura="600" />
<img alt="22" src="assets/22.png" largura="600" />
<img alt="23" src="assets/23.png" largura="600" />
<img alt="24" src="assets/24.png" largura="600" />
