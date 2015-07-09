powershell -Command "Set-ExecutionPolicy RemoteSigned"

powershell -Command "Start-Process powershell.exe -ArgumentList C:\pythonseleniumsetup\pythoninstall.ps1 -Verb runas"

pip install --upgrade pip
pip install selenium
