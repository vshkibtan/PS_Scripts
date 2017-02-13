<# 
    Description: Script change the hostname of current host
    Date       : 18.01.2017
    Author     : Vitalii Shkibtan
    Version    : 1
#>

[CmdletBinding()]

Param (
[Parameter (Mandatory=$true, Position=1)]
[string]$hostName
)

Rename-Computer $hostName

