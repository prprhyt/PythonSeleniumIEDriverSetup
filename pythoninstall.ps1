New-Item C:\Python27 -itemType Directory
(new-object System.Net.WebClient).DownloadFile("https://www.python.org/ftp/python/2.7.10/python-2.7.10.msi", "C:\\pythonseleniumsetup\\python27installer.msi");
msiexec /i "C:\\pythonseleniumsetup\\python27installer.msi" /l*v "C:\\pythonseleniumsetup\\python27install.log" /qn;
$path = [Environment]::GetEnvironmentVariable('PATH', 'Machine');
$path += ';' + 'C:\Python27;C:\Python27\Scripts';
[Environment]::SetEnvironmentVariable('PATH', $path, 'Machine');
Copy-Item C:\pythonseleniumsetup\IEDriverServer.exe C:\Python27 -Force
