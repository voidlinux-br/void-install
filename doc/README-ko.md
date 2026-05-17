# void-install — 브라질 Void Linux 설치 프로그램

실용성, 자동화 및 최신 설치 경험에 중점을 둔 VOID Linux용 VoidBR 커뮤니티 설치 프로그램입니다.

---

# 설치

## 방법 1 - VoidBR 저장소(권장)

공식 Void Linux ISO 사용:

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

## 방법 2 - 힘내

```bash
git clone --depth=1 https://github.com/voidlinuxbr/void-install
cd void-install

sudo make install
```

설치하지 않고 로컬로 실행:

```bash
./void-install
```

---

## 방법 3 - 컬/wget을 통한 빠른 설치

### 컬

```bash
bash <(curl -sL https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
```

### wget

```bash
bash <(wget -qO- https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
```

---

## Método 4 — 매뉴얼 do 스크립트 다운로드

### 컬

```bash
curl -O https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
```

### wget

```bash
wget https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
```

그런 다음 다음을 실행합니다.

```bash
chmod +x install.sh
bash install.sh
```

---

# 사용

설치 프로그램 시작:

```bash
sudo void-install
```

> 시스템 설치를 수행하려면 `sudo` 또는 높은 권한이 필요합니다.

---

# 스크린샷

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

# 프로젝트

GitHub:
https://github.com/voidlinuxbr/void-install
