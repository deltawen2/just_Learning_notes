#!/bin/bash
# 轉換成 PDF，使用 UTF-8 編碼
# 資料夾路徑
INPUT_DIR="$PWD"
OUTPUT_DIR="$PWD/pdf"

# 建立輸出資料夾（如果不存在）
mkdir -p "$OUTPUT_DIR"

# 迴圈處理每個 .html 檔案
for html_file in "$INPUT_DIR"/*.html; do
  # 取得純檔名
  filename=$(basename "$html_file" .html)

  # 使用 UTF-8 編碼轉換成 PDF
  wkhtmltopdf --encoding utf-8 "$html_file" "$OUTPUT_DIR/$filename.pdf"

  echo "✅ 已轉換：$filename.pdf"
done

