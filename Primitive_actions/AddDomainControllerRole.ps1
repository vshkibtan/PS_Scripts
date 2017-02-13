<#
    Description: Add Domain Controller role
    Date       : 18.01.2017
    Author     : Vitalii Shkibtan
    Version    :
#>

Import-Module ServerManager
Add-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools





