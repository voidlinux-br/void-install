# void-install — 巴西 Void Linux 安裝程序

適用於 VOID Linux 的 VoidBR 社群安裝程序，專注於實用性、自動化和現代安裝體驗。

---

# 安裝

## 方法 1 — VoidBR 儲存庫（建議）

使用官方 Void Linux ISO：

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

## 方法 2——Git

```bash
git clone --depth=1 https://github.com/voidlinuxbr/void-install
cd void-install

sudo make install
```

本地運行，無需安裝：

```bash
./void-install
```

---

## 方法3——透過curl/wget快速安裝

### 捲曲

```bash
bash <(curl -sL https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
```

### 獲取

```bash
bash <(wget -qO- https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh)
```

---

## Método 4 — 下載手冊 do 腳本

### 捲曲

```bash
curl -O https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
```

### 獲取

```bash
wget https://raw.githubusercontent.com/voidlinuxbr/void-install/master/install.sh
```

然後運行：

```bash
chmod +x install.sh
bash install.sh
```

---

# 使用

啟動安裝程式：

```bash
sudo void-install
```

> 需要 `sudo` 或提升的權限來執行系統安裝。

---

# 截圖

<img alt="01" src="assets/01.png" width="700" />

<img alt="03" src="assets/03.png" width="700" />
<img alt="04" src="assets/04.png" width="700" />
<img alt="05" src="assets/05.png" width="700" />
<img alt="06" src="assets/06.png" width="700" />
<img alt="07" src="assets/07.png" width="700" />
<img alt="08" src="assets/08.png" width="700" />
<img alt="09" src="assets/09.png" width="700" />

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

# 專案

GitHub：
辣椒_REF_0_辣椒
