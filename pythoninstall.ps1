New-Item C:\Python27 -itemType Directory
(new-object System.Net.WebClient).DownloadFile("http://selenium-release.storage.googleapis.com/2.46/IEDriverServer_Win32_2.46.0.zip", "C:\\pythonseleniumsetup\\IEDriver.zip");
(new-object System.Net.WebClient).DownloadFile("https://www.python.org/ftp/python/2.7.10/python-2.7.10.msi", "C:\\pythonseleniumsetup\\python27installer.msi");
msiexec /i "C:\\pythonseleniumsetup\\python27installer.msi" /l*v "C:\\pythonseleniumsetup\\python27install.log" /qn;
$path = [Environment]::GetEnvironmentVariable('PATH', 'Machine');
$path += ';' + 'C:\\Python27;C:\\Python27\\Scripts';
[Environment]::SetEnvironmentVariable('PATH', $path, 'Machine');
cmd /c "CScript /NoLogo C:\A\pythonseleniumsetup\\jscriptzip.js";
