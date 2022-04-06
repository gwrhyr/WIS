# Profile

# Set the directory to read
$psdir=(Join-Path $env:USERPROFILE Documents\PowerShell\Scripts\EGO_Autoload)

# Read all the scripts in the directory above if exists
If (Test-Path $psdir) {
    Write-Output "Profile ready!"
    Get-ChildItem "${psdir}\*.ps1" | ForEach-Object{.$_}
} else {
    Write-Output "Cannot find " + $psdir
}
