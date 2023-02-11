Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation
choco upgrade chocolatey -y

choco install chocolatey-core.extension -y
choco install firefox -y
choco install 7zip -y
choco install modernflyouts -y
choco install eartrumpet -y
choco install docker-desktop -y
choco install icue -y
choco install megasync -y
choco install protonvpn -y
choco install steam-client -y
choco install battle.net -y
choco install discord -y
choco install betterdiscord -y
choco install spotify -y
choco install obs-studio -y
choco install vortex -y
choco install qbittorrent -y
choco install vlc -y
choco install mpv -y
choco install git -y
choco install github-desktop -y
choco install vscode -y
choco install gimp -y

choco upgrade all -y
