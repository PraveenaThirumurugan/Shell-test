Start-Transcript -Path "C:\install\automation\logs\install.log" - Force

$softwareName='notepad'

if ( ( Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*).DisplayName -like "$softwareName*"){
    Write-Output "Software is already installed"
    Write-Host "--------> Exiting <--------" -ForegroundColor Red -BackgroundColor Yellow
    Exit;
} else {
    Write-Output "Software not installed. Proceeding with installation"
}

Stop-Transcript