Write-Output "|| This will not work unless you have the App Installer package. Get it here: ||"
Write-Output "|| https://apps.microsoft.com/store/detail/app-installer/9NBLGGH4NNS1?hl=en-us&gl=us&rtc=1 ||"
Read-Host "|| Press enter to continue... ||"

$programs = @(
  "Mozilla.Firefox",
  "Discord.Discord",
  "File-New-Project.EarTrumpet",
  "Valve.steam",
  "RiotGames.Valorant.NA",
  "HeroicGamesLauncher.HeroicGamesLauncher",
  "Blizzard.BattleNet",
  "NexusMods.Vortex"
)
ForEach ($program in $programs) {
  winget install $program
}