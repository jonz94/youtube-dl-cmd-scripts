@echo off
chcp 65001 > nul

setlocal EnableDelayedExpansion

echo.
echo 提示：zh-Hant 代表繁體中文
SET /P url=輸入想要查詢的 YouTube 影片連結，然後按下 Enter：
echo 開始查詢 %url%

youtube-dl --list-subs %url%

echo ========
echo 查詢成功
echo ========
pause