<#
.SYNOPSIS
    Uses Winget to install all the apps in the array
.DESCRIPTION
    Uses Winget to install all the apps in the array
.NOTES
    'This function is not supported in Linux'
.EXAMPLE
    Install-WingetApps
    Explanation of the function or its result. You can include multiple examples with additional .EXAMPLE lines
#>

$apps = @(
    "Microsoft.WindowsTerminal",
    "Microsoft.VisualStudioCode",
    "Git.Git",
    "JanDeDobbeleer.OhMyPosh",
    "Microsoft.EdgeWebView2Runtime",
    "Microsoft.VCRedist.2015+.x64",
    "Google.Chrome",
    "Microsoft.PowerToys",
    "Bitwarden.Bitwarden",
    "7zip.7zip",
    "Notepad++.Notepad++",
    "ScooterSoftware.BeyondCompare4",
    "Pushbullet.Pushbullet",
    "VideoLAN.VLC",
    "TechSmith.Snagit.2023",
    "OpenWhisperSystems.Signal"
)

$apps | ForEach-Object {winget install --silent -e --id $_}