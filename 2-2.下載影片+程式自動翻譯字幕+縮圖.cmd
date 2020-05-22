@echo off
chcp 65001 > nul

setlocal EnableDelayedExpansion

echo.
SET /P url=輸入想要下載的 YouTube 影片連結，然後按下 Enter：
IF [%url%] == [] (
    echo 掰掰
    pause
    exit
)

echo.
echo.開始下載 %url%
echo.

youtube-dl --write-auto-sub --sub-lang=zh-Hant --write-thumbnail %url%

echo.
echo.=========
echo.下載成功
echo.=========
echo.
pause