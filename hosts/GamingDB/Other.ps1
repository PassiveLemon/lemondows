$homedl = "C:\Users\${env:username}\Downloads"

$ProgressPreference = 'SilentlyContinue'
Invoke-WebRequest -Uri https://github.com/Rem0o/FanControl.Releases/blob/master/FanControl.zip?raw=true -Outfile ${homedl}\FanControl.zip -UseBasicParsing
Expand-Archive -Path "${homedl}\FanControl.zip" -DestinationPath "${homedl}\FanControl\"
Invoke-WebRequest -Uri https://securecdn.oculus.com/binaries/download/?id=3338642543083794 -Outfile ${homedl}\OculusSetup.exe -UseBasicParsing
Invoke-WebRequest -Uri https://github.com/builtbybel/bloatbox/releases/download/0.20.0/bloatbox.zip -Outfile ${homedl}\bloatbox.zip -UseBasicParsing
Expand-Archive -Path "${homedl}\bloatbox.zip" -DestinationPath "${homedl}\bloatbox\"

$ProgressPreference = 'SilentlyContinue'
Invoke-WebRequest -Uri https://github.com/PassiveLemon/scripts/archive/refs/heads/master.zip -Outfile ${homedl}\WindowsScripts.zip -UseBasicParsing
Expand-Archive -Path "${homedl}\WindowsScripts.zip" -DestinationPath "${homedl}\WindowsScripts\"

Invoke-Item ${homedl}

Read-Host "|| Once all of the other items are installed, continue to this step by pressing enter. ||"

$scripts = @(
  "OculusKiller.ps1",
  "RemoveEdge.ps1",
  "TurnSignalPatcher.ps1"
)
ForEach ($script in $scripts) {
  Powershell.exe -executionpolicy unrestricted -File "${homedl}\windowsscripts\scripts-master\Windows\${script}"
}

# Manual downloads

$urls = @(
  "https://www.nvidia.com/Download/index.aspx?lang=en-us"
)
ForEach ($url in $urls) {
  Start-Process firefox.exe $url
}

Read-Host "|| Complete. Press enter to exit. ||"

