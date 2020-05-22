@echo off
chcp 65001 > nul

IF "%~1" == "" (
    echo QAQ
    pause
    exit
)

echo.將 "%~1"
echo.
echo.轉換為 "%~1.ass" 字幕檔案
echo.
ffmpeg -i "%~1" "%~1.ass"
echo.
echo.========
echo.轉檔成功
echo.========
pause