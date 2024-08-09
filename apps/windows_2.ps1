# Installing scoop
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

scoop bucket add main
# langs
scoop install main/git
scoop install main/nvm
scoop install main/python
scoop install main/rust
scoop install main/go
# utils 
scoop install main/ffmpeg

# Installing choco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# browsers
choco install googlechrome
# java
choco install jre8
# editors
choco install vscode
choco install visualstudio2022community
# entertainment
choco install vlc
choco install transmission
choco install zoom
choco install discord
