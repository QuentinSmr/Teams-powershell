<#
    .SYNOPSIS
        Add channels in Microsoft Teams
    .DESCRIPTION
        Adds a single channel or channels list in Microsoft Teams
    .OUTPUTS
        Results are written to the console.
    .EXAMPLE
        .\AddChannelTeam.ps1
    .NOTES
        Version:
            2021.06.08
        Prerequisites:
            OS:
                Tested running on Windows 10 Business 1909
            Software:
                PowerShell MicrosoftTeams Cmdlets
            Author:
                Ramisto
#>

#Import Module
Install-Module MicrosoftTeams


# Connect to Microsoft Teams
Write-Host
Connect-MicrosoftTeams 
Write-Host "Connection to Microsoft Teams..." -ForegroundColor Magenta
Write-Host

# Import csv
$channelsList = Import-Csv ".\Csv\channels-list.csv" -Delimiter "," -Encoding utf8
  

Foreach($channel in $channelsList)
{
  # Create channels
  New-TeamChannel -GroupId $channel.GroupId -DisplayName $channel.ChannelName

  Write-Host "The" $channel.ChannelName "is added" -ForegroundColor Green

}

# Disconnect
Write-Host
Disconnect-MicrosoftTeams
Write-Host "Diconnect to Microsoft Teams..." -ForegroundColor Magenta
Write-Host