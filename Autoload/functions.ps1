# Add functions below

Function Start-Log() {
    Param(
        $log_title
    )
    $date = Get-Date -Format "yyyyMMdd"
    $log_container = Join-Path $HOME "Documents\WindowsPowerShell\EGO_Log"
    if($log_title -eq $null) {
        $log_title = Read-Host "Type log title"
    }
    $file_name = $date + "_" + $log_title + ".log"
    $file_fullpath = Join-Path $log_container $file_name
    
    Start-Transcript $file_fullpath -Append
}

