# find
```bash
find / -name "file.xxx"  #搜尋根目錄
find ~ -name "file.xxx"  #搜尋根目錄
```

# ls
📌 實用範例
ls -l：顯示詳細資訊

ls -la：顯示所有檔案（含隱藏檔）與詳細資訊

ls -lh：詳細資訊 + 人類可讀檔案大小

ls -lt：依修改時間排序

ls -lS：依檔案大小排序

ls -ld /etc：顯示 /etc 目錄本身的資訊

ls -R /var：遞迴列出 /var 目錄下所有內容

# 查uuid
```bash
root@OpenWrt:~# block info
/dev/sda1: UUID="1234-ABCD" LABEL="kernel" VERSION="FAT16" MOUNT="/boot" TYPE="vfat"
/dev/sda2: UUID="ff313567-e9f1-5a5d-9895-3ba130b4a864" LABEL="rootfs" VERSION="1.0" MOUNT="/rom" TYPE="ext4"
/dev/sda3: UUID="ebdb0d8a-3335-4032-b1f8-542d486dffd0" VERSION="1.0" MOUNT="/overlay" TYPE="ext4"
/dev/sda4: UUID="e9adf276-1dbc-4a56-93fe-468599988425" VERSION="1.0" MOUNT="/www" TYPE="ext4"
```

# 查磁碟
```bash
df -h
lsblk
fdisk -l

```
