reg add "HKLM\SOFTWARE\Microsoft\Internet Explorer\MAIN\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE" /v iexplore.exe /t REG_DWORD /d 0 /f
powershell -Command "Set-ExecutionPolicy RemoteSigned"
set dir=%~dp0
powershell -Command "Start-Process powershell.exe -ArgumentList %dir%PythonIEDriverInstall.ps1 -Verb runas"
