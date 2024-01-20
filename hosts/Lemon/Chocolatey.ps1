Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation
choco upgrade chocolatey -y

$programs = @(
  "chocolatey-core.extension",
  "firefox",
  "7zip",
  "modernflyouts",
  "eartrumpet",
  "docker-desktop",
  "icue",
  "megasync",
  "protonvpn",
  "steam-client",
  "battle.net",
  "discord",
  "betterdiscord",
  "spotify",
  "obs-studio",
  "vortex",
  "qbittorrent",
  "vlc",
  "mpv",
  "git",
  "github-desktop",
  "vscode",
  "gimp",
)
ForEach ($program in $programs) {
  choco install $program -y
}

choco upgrade all -y
