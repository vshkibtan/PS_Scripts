<#
    Description: Create new forest on Domain Controller 
    Date       : 18.01.2017
    Author     : Vitalii Shkibtan
    Version    : 1
#>

Param (
[Parameter (Mandatory=$true, Position=1)]
[string]$domainName,

[Parameter (Mandatory=$true, Position=2)]
[string]$domainNetbiosName
)


Import-Module ADDSDeployment
Install-ADDForest `
-CreateDnsDelegation:$false `
-DatabasePath "C:\Windows\NTDC" `
-DomainMode "Win2012" `
-DomainName $domainName `
-DomainNetbiosName $domainNetbiosName `
-ForestMode "Win2012" `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows\SYSVOL" `
-SafeModeAdministratorPassword (ConvertTo-SecureString 'Password12#' -AsPlainText -Force)


