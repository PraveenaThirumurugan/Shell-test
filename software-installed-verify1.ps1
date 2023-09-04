Start-Transcript -Path "C:\install\automation\logs\install.log" - Force

$softwareName='notepad'

#if ( ( Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*).DisplayName -like "$softwareName*"){
    Write-Output "$softwareName Software is already installed"
    Write-Host "--------> Exiting <--------" -ForegroundColor Red -BackgroundColor Yellow
    

Stop-Transcript
