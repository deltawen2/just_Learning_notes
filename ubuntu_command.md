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
deltawen@wensever:~$ blkid
/dev/sda4: UUID="4f9b0933-2961-4569-8537-1448bc98c3b8" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="afd68cc8-a88c-45a4-8018-04dda0b375d4"
/dev/sda2: UUID="3f5d1e0d-5e6f-4811-b46a-0f6401be3f4a" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="34bcce64-b591-4576-9853-7de6f1e274fe"
/dev/sda3: UUID="865d221d-77a5-4261-bfe8-04227f66204f" TYPE="swap" PARTUUID="8ce41657-e6f0-4bee-aa84-e308bafdf73c"

```

# 查磁碟
```bash
df -h
lsblk
fdisk -l

```
