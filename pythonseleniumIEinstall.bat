powershell -Command "Set-ExecutionPolicy RemoteSigned"
set dir=%~dp0
powershell -Command "Start-Process powershell.exe -ArgumentList %dir%pythoninstall.ps1 -Verb runas"

pip install --upgrade pip
pip install selenium
