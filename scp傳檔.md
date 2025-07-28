# SCP（Secure Copy Protocol）是基於SSH的一種安全文件傳輸方式
## Ubuntu 和 OpenWrt 使用 SCP 互相傳送檔案
### Ubuntu (作為發送方或接收方)
>需要安裝的套件
>>**`openssh-client`**: SCP 客戶端
>>**`openssh-server`**: SCP 服務器端
```bash
sudo apt update
sudo apt install openssh-server openssh-client

```
>安裝 `openssh-server` 後，SSH 服務通常會自動啟動。你可以通過以下命令檢查其狀態：
```bash
sudo systemctl status ssh
```
>如果服務未運行，可以手動啟動：
```bash
sudo systemctl start ssh
```
### OpenWrt (作為發送方或接收方)

```bash
opkg update
# 或者，如果只需要 scp 命令，可能會有更小的獨立 scp 包 
# opkg install scp
opkg install openssh-client
#安裝 openssh-sftp-server (可選，如果 Dropbear 不夠用)
opkg install openssh-sftp-server

```
#### SCP 傳送檔案範例
>假設 Ubuntu 的 IP 是 `192.168.1.100`
OpenWrt 的 IP 是 `192.168.1.1`
用戶名都假設為 `root` 

```bash
#傳送檔案
scp /path/to/your/local/file.txt root@192.168.1.1:/path/on/openwrt/
#接收檔案
scp root@1992.168.1.1:/path/on/openwrt/file.txt /path/to/your/local/
#接收到當前目錄接收目錄就用.
scp root@1992.168.1.1:/path/on/openwrt/file.txt .

```

