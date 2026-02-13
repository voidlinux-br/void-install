# void-install - VOID Linux ブラジルインストーラー
## ダウンロード：
- 0 - ディストリビューション VOID を使用
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

- 1 - git を使用する
	- git clone -- Depth=1 https://github.com/voidlinuxbr/void-install

- 2 -curl/wget stdin を使用する
	- bash <(curl -s -L https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
	- bash <(wget -q -O - https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
	- カール -s -O https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh |バッシュ
	- wget -q -O - https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh |バッシュ

- 3 -curl/wgetを使用する
	- カール -O https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
	- wget https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
	- chmod +x インストール.sh
	- bash インストール.sh

## インストール (ダウンロード後):
- 1 - make を使用する
	- sudo メイクインストール

- 2 - ローカル リポジトリで実行
	- ./void-install

例
--------

ヘルプを表示するには、引数を指定せずに `void-install` を実行します。

<img alt="void-install-help" src="assets/void-install-help.jpg" width="600" />

**注意:** インストーラーを実際に実行するには、「sudo」または昇格された権限が必要です。

`void-install -i` を実行してインストーラーを起動し、言語を選択します。

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
