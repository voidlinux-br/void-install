# void-install - VOID Linux 브라질 설치 프로그램
## 다운로드:
- 0 - distro VOID 사용
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

- 1 - 자식 사용
	- git clone --깊이=1 https://github.com/voidlinuxbr/void-install

- 2 - 컬/wget stdin 사용
	- 배쉬 <(curl -s -L https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
	- 배쉬 <(wget -q -O - https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
	- 컬 -s -O https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh | 세게 때리다
	- wget -q -O - https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh | 세게 때리다

- 3 - 컬/wget 사용
	- 컬 -O https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
	- wget https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
	- chmod +x install.sh
	- 배시 설치.sh

## 설치(다운로드 후):
- 1 - make 사용
	- sudo make 설치

- 2 - 로컬 저장소에서 실행
	- ./void-install

예
--------

도움을 받으려면 인수 없이 `void-install`을 실행하세요.

<img alt="void-install-help" src="assets/void-install-help.jpg" width="600" />

**참고:** 실제로 설치 프로그램을 실행하려면 `sudo` 또는 에스컬레이션된 권한이 필요합니다.

`void-install -i`를 실행하여 설치 프로그램을 시작하고 언어를 선택하세요.

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
