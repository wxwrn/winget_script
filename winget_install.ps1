. .\modules\test_apps.ps1
. .\modules\apps.ps1


winget install -h gerardog.gsudo

$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User") 

function Show-Menu {
    param (
        [string]$Title = "WinGet Install Script"
    )
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Press '1' to show apps."
    Write-Host "2: Press '2' to install apps."
    Write-Host "3: Press '3' to install TEST APPS."
    Write-Host "Q: Press 'Q' to quit."
}

do {
    Show-Menu
    $input = Read-Host "Please make a selection"
    switch ($input) {
        "1" {
            Clear-Host
            "You chose option #1"

            $apps


        } "2" {
            Clear-Host
            "You chose option #2"

            winget install -h $spotify
            sudo winget install -h $apps
            

        } "3" {
            Clear-Host
            "You chose option #3"

            sudo winget install -h $test_apps

        } "q" {
            return
        }
    }
    pause
}
until ($input -eq "q")