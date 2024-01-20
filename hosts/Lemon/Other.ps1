$homedl = "C:\Users\${env:username}\Downloads"
$ProgressPreference = 'SilentlyContinue'

if ( -not ( Test-Path -Path "${homedl}\FanControl.zip" )) {
  Invoke-WebRequest -Uri https://github.com/Rem0o/FanControl.Releases/blob/master/FanControl.zip?raw=true -Outfile ${homedl}\FanControl.zip -UseBasicParsing
  Expand-Archive -Path "${homedl}\FanControl.zip" -DestinationPath "${homedl}\FanControl\"
}

Invoke-Item ${homedl}
