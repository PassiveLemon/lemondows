$websitelist = @"
  https://www.nvidia.com/Download/index.aspx?lang=en-us
  https://playvalorant.com/en-us/
"@
ForEach ($website in $websitelist) {
  Start-Process -FilePath $website
}

# Some variables to save my fingers
$iwr = "Invoke-WebRequest -Uri"
$homedl = "C:\Users\${env:username}\Downloads"

$iwr https://github.com/Rem0o/FanControl.Releases/blob/master/FanControl.zip?raw=true -Outfile "${homedl}\FanControl.zip"
$iwr https://securecdn.oculus.com/binaries/download/?id=3338642543083794 -Outfile "${homedl}\OculusSetup.exe"
$iwr https://github.com/builtbybel/bloatbox/releases/download/0.20.0/bloatbox.zip -Outfile "${homedl}\bloatbox.zip"
Expand-Archive -Path "${homedl}\bloatbox.zip" -DestinationPath "${homedl}\bloatbox\"

Read-Host "|| Once all of the other items are installed, continue to this step by pressing enter. ||"
$iwr https://github.com/PassiveLemon/scripts/archive/refs/heads/master.zip -Outfile "${homedl}\windowsscripts.zip"
Expand-Archive -Path "${homedl}\windowsscripts.zip" -DestinationPath "${homedl}\windowsscripts\"
$scriptlist = @"
  OculusKiller.ps1
  RemoveEdge.ps1
  TurnSignal.ps1
"@
ForEach ($script in $scriptlist) {
  Start-Process -FilePath "${homedl}\windowsscripts\master\Windows\${script}"
}

