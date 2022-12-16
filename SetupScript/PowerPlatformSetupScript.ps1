Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted

Install-Module -Name Microsoft.PowerApps.Administration.PowerShell #-Force
Install-Module -Name Microsoft.PowerApps.PowerShell -AllowClobber

#Alternatively, if you don't have admin rights on your computer, you can use the following to use these modules:
#Save-Module -Name Microsoft.PowerApps.Administration.PowerShell -Path
#Import-Module -Name Microsoft.PowerApps.Administration.PowerShell
#Save-Module -Name Microsoft.PowerApps.PowerShell -Path
#Import-Module -Name Microsoft.PowerApps.PowerShell


Set-PSRepository -Name 'PSGallery' -InstallationPolicy Untrusted

# Here is how you can pass in credentials (avoiding opening a prompt)
$pass = ConvertTo-SecureString "********" -AsPlainText -Force
Add-PowerAppsAccount -Username MeganB@M365x229910.OnMicrosoft.com -Password $pass

Get-FlowEnvironment | Select *

Get-AdminPowerAppEnvironment

#https://docs.microsoft.com/en-us/power-platform/admin/powerapps-powershell
#https://docs.microsoft.com/en-us/power-automate/web-api
