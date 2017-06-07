<#
    Description: Start iSCSI service
    Date       : 07.06.2017
    Author     : Vitalii Shkibtan
    Version    : 1
#>

Start-Service msiscsi
Set-Service msiscsi -StartupType automatic
