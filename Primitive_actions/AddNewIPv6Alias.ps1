<#
    Description: Script create aliase to network interface v6
    Date: 18.01.2017
    Author: Vitalii Shkibtan
    Version: 1
#>

Param (
[Parameter (Mandatory=$true, Position=1)]
[string]$interfaceAlias,

[Parameter (Mandatory=$true, Position=2)]
[string]$ipAddress
)

New-NetIPAddress -InterfaceAlias $interfaceAlias -IPAddress $ipAddress -PrefixLength 64 -AddressFamily IPv6

