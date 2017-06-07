<#
    Description: Connect to target iSCSI
    Date       : 06.07.2017
    Author     : Vitalii Shkibtan
    Version    : 1
#>

Param (
[Parameter (Mandatory=$true, Position=1)]
[string]$targetPortalAddress
)

New-IscsiTargetPortal -TargetPortalAddress $targetPortalAddress
$my = Get-IscsiTarget  # get target NodeAddress
Connect-IscsiTarget -NodeAddress $my.NodeAddress
