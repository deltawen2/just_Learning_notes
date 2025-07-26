#!/bin/bash
# png圖片去背
# 切換到當前資料夾（可略）
cd "$PWD"

# 建立輸出資料夾
OUTPUT_DIR="./nobg"
mkdir -p "$OUTPUT_DIR"

# 轉換所有 .png 圖片
for img in ./*.png; do
  # 取得純檔名
  filename=$(basename "$img" .png)

  # 去除白色背景（轉透明）
  convert "$img" -fuzz 5% -transparent white "$OUTPUT_DIR/${filename}_nobg.png"

  echo "✅ 處理完成：${filename}_nobg.png"
done

