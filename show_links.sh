#!/bin/bash

# 設定 GitHub Pages 網址前綴
BASE_URL="https://deltawen2.github.io/just_Learning_notes"

# 掃描所有 .html 檔案並印出 Markdown 連結
for file in *.html; do
  name="${file%.html}"
  echo "[$name]($BASE_URL/$file)"
done

