Write-Host "|| This will not work unless you have the App Installer package. Get it here: ||"
Write-Host "|| https://apps.microsoft.com/store/detail/app-installer/9NBLGGH4NNS1?hl=en-us&gl=us&rtc=1 ||"

$programlist = @"
  Git.Git
  Mozilla.Firefox
  Discord.Discord
  File-New-Project.EarTrumpet
  ModernFlyouts.ModernFlyouts
  Valve.steam
  RiotGames.Valorant.NA
  HeroicGamesLauncher.HeroicGamesLauncher
  NexusMods.Vortex
"@
ForEach ($program in $programlist) {
  winget install $program
}