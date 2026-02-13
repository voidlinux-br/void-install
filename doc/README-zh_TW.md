# void-install - VOID Linux 巴西安裝程序
## 下載：
- 0 - 使用發行版 VOID
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

- 1 - 使用git
	- git克隆--深度= 1 https://github.com/voidlinuxbr/void-install

- 2 - 使用curl/wget stdin
	- bash <(curl -s -L https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
	- bash <(wget -q -O - https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
	- 捲曲-s -O https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh |巴什
	- wget -q -O - https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh | wget -q -O - https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh |巴什

- 3 - 使用curl/wget
	- 捲曲-O https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
	- wget https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
	- chmod +x install.sh
	- bash安裝.sh

## 安裝（下載後）：
- 1 - 使用make
	- 須藤進行安裝

- 2 - 在本機儲存庫中運行
	- ./void-安裝

範例
---------

運行不帶任何參數的“void-install”來獲取幫助。

<img alt="void-install-help" src="assets/void-install-help.jpg" width="600" />

**注意：** 實際執行安裝程式需要 `sudo` 或升級權限。



<img alt="01" src="assets/01.png" width="600" />
<img alt="02" src="assets/02.png" width="600" />
<img alt="03" src="assets/03.png" width="600" />
<img alt="04" src="assets/04.png" width="600" />
<img alt="05" src="assets/05.png" width="600" />
<img alt="06" src="assets/06.png" width="600" />
<img alt="07" src="assets/07.png" width="600" />
<img alt="08" src="assets/08.png" width="600" />
<img alt="09" src="assets/09.png" width="600" />
<img alt="10" src="assets/10.png" width="600" />
<img alt="11" src="assets/11.png" width="600" />
<img alt="12" src="assets/12.png" width="600" />
<img alt="13" src="assets/13.png" width="600" />
<img alt="14" src="assets/14.png" width="600" />
<img alt="15" src="assets/15.png" width="600" />
<img alt="16" src="assets/16.png" width="600" />
<img alt="17" src="assets/17.png" width="600" />
<img alt="18" src="assets/18.png" width="600" />
<img alt="19" src="assets/19.png" width="600" />
<img alt="20" src="assets/20.png" width="600" />
<img alt="21" src="assets/21.png" width="600" />
<img alt="22" src="assets/22.png" width="600" />
<img alt="23" src="assets/23.png" width="600" />
<img alt="24" src="assets/24.png" width="600" />
