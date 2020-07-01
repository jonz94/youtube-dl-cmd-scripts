Get-Command scoop > $null 2>&1
if (!($?)) {
    iwr -useb get.scoop.sh | iex
    ./0.install-and-update.ps1
    exit
}

Get-Command git > $null 2>&1
if ($?) {
    git pull
} else {
    scoop install git
    git config --global pull.rebase false
    git init
    Remove-Item *
    git remote add origin https://github.com/jonz94/youtube-dl-cmd-scripts.git
    git pull origin master
    git branch --set-upstream-to=origin/master master
}

Get-Command ffmpeg > $null 2>&1
if (!($?)) {
    scoop install ffmpeg
}

Get-Command youtube-dl > $null 2>&1
if (!($?)) {
    scoop install youtube-dl
    scoop bucket add extras
    scoop install vcredis2010
}

Get-Command scoop > $null 2>&1
if ($?) {
    scoop update *
    scoop cleanup *
}

echo ========
echo Success!
echo ========
pause