$homedl = "C:\Users\${env:username}\Downloads"
$ProgressPreference = 'SilentlyContinue'

if ( -not ( Test-Path -Path "${homedl}\bloatbox.zip" )) {
  Invoke-WebRequest -Uri https://github.com/builtbybel/bloatbox/releases/download/0.20.0/bloatbox.zip -Outfile ${homedl}\bloatbox.zip -UseBasicParsing
  Expand-Archive -Path "${homedl}\bloatbox.zip" -DestinationPath "${homedl}\bloatbox\"
}

Invoke-Item ${homedl}

Read-Host "|| Once all of the other items are installed, continue to this step by pressing enter. ||"

$scripts = @(
  "RemoveEdge.ps1",
)
ForEach ($script in $scripts) {
  Powershell.exe -executionpolicy unrestricted -File "${homedl}\windowsscripts\scripts-master\Windows\${script}"
}

Read-Host "|| Complete. Press enter to exit. ||"

