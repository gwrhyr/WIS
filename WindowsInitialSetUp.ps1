# Set profile
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Confirm
New-Item $PROFILE.CurrentUserAllHosts

# Install powershell
# TODO: If not installed
# Invoke-Expression "& { $(Invoke-RestMethod https://aka.ms/install-powershell.ps1) } -UseMSI"

# Change character code (optional)
# chcp 65001
# $OutputEncoding = [Text.Encoding]::GetEncoding(65001)

# TODO: Copy files and directories to proper position

# TODO: Install Chocolatey
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install from choco config file
$chocoIsInstalled = ($null -ne (choco -v))
if ($chocoIsInstalled) {
    choco install (Join-Path $PSScriptRoot packages.config)
}

# TODO: install posh-git

