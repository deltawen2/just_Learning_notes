# 新增root權限使用者deltawen

## 編輯 `/etc/passwd`
>`echo 'deltawen:x:0:0:deltawen:/home/deltawen:/bin/ash' >> /etc/passwd`
## 編輯 `/etc/shadow`（加入空密碼或自行設定）
>`echo 'deltawen::0:0:99999:7:::' >> /etc/shadow`
## 建立 home 目錄
>`mkdir  -p /home/deltawen`
>`chown 0:0 /home/deltawen`
## 建立密碼
>`passwd deltawen`

# 新增一般使用者omagawen

## 編輯 `/etc/passwd`
>`echo 'omagawen:x:1000:1000:omagawen:/home/omagawen:/bin/ash' >> /etc/passwd`
## 編輯 `/etc/shadow`（加入空密碼或自行設定）
>`echo 'omagawen::0:0:99999:7:::' >> /etc/shadow`
## 建立 home 目錄並設權限
>`mkdir  -p /home/omagawen`
>`chown  1000:1000 /home/omagawen`
## 確認群組設定（可選）
>`echo 'omagawen:x:1000:' >> /etc/group`
## 建立密碼
>`passwd deltawen`
