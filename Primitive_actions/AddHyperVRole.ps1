<#
    Description: Add Hyper-V role
    Date: 18.01.2017
    Author: Vitalii Shkibtan
    Version: 1
#>

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All -NoRestart
Install-WindowsFeature RSAT-Hyper-V-Tools -IncludeAllSubFeature
Install-WindowsFeature RSAT-Clustering -IncludeAllSubFeature
Install-WindowsFeature Multipath-IO
Restart-Computer
