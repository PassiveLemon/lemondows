Write-Output "|| You will need to change the execution policy for this to run. You also need to run it as admin. ||"
Write-Output '|| Change the policy with "Set-ExecutionPolicy unrestricted" ||'
Read-Host "|| Press enter to continue... ||"

Unblock-File .\Winget.ps1
Unblock-File .\Other.ps1

Write-Output "|| Activation ||"
irm https://massgrave.dev/get | iex

.\Chocolatey.ps1
.\Winget.ps1
.\Other.ps1
