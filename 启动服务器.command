#!/bin/bash
cd "$(dirname "$0")"
echo "正在启动 Vietnam LNG Dashboard..."
echo "浏览器打开: http://localhost:8000"
echo ""
python3 -m http.server 8000
read -p "按回车键关闭服务器..."
