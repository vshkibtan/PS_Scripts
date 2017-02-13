<#
    Description: Script change DNS settings
    Date       : 18.01.2017
    Author     : Vitalii Shkibtan
    Version    : 1
#>


Param (
[Parameter (Mandatory=$true, Position=1)]
[string]$interfaceAlias,

[Parameter (Mandatory=$true, Position=2)]
[string]$serverAddresses
)

Set-DnsClientServerAddress -InterfaceAlias $interfaceAlias -ServerAdresses $serverAdresses

