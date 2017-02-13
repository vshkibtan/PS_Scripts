<#
    Description: Script add the current host to Domain
    Date   : 18.01.2017
    Author : Vitalii Shkibtan
    Version: 1
#>

Params (
[Parameter (Mandatory=$true, Position=1)]
[string]$domainName
)


Add-Computer -DomainName $domainName


