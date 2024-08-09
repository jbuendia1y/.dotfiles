# Installing windows terminal
winget install -e -i --id=9N0DX20HK701 --source=msstore
# Installing powershell latest 
winget install -e -i --id=9MZ1SNWT0N5D --source=msstore
# Installing oh my posh
winget install JanDeDobbeleer.OhMyPosh -s winget

$newLine = 'oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/unicorn.omp.json" | Invoke-Expression'
$fileContent = Get-Content $PROFILE
if (-Not ($fileContent.Contains($newLine))){
    "`n" + $newLine | Add-Content -Path $PROFILE
}

# Set font and opacity to windows terminal
$settingsPath = "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
$settingsJson = Get-Content -Path $settingsPath -Raw | ConvertFrom-Json
if (-not $settingsJson.profiles.PSObject.Properties["defaults"]) {
    $settingsJson.profiles | Add-Member -MemberType NoteProperty -Name "defaults" -Value @{}
}
$settingsJson.profiles.defaults = @{
    font = @{
        face = "Hack Nerd Font Mono"
        size = 13.0
    }
    opacity = 90
}
$settingsJson | ConvertTo-Json -Depth 32 | Set-Content -Path $settingsPath

echo "Please install the Hack Nerd Font Mono"