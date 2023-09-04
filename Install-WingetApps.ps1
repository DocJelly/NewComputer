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
    "OpenWhisperSystems.Signal",
    "Chocolatey.Chocolatey"
)

$chocolateyApps = @(
    "cascadiacodepl",
    "ffmpeg",
    "paint.net"
)

$apps | ForEach-Object {winget.exe install --silent -e --id $_ }

$chocolateyApps | ForEach-Object {choco install $_ -y}