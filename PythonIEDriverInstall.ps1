New-Item C:\Python27 -itemType Directory -Force
$mypath =Split-Path ( & { $myInvocation.ScriptName } ) -parent;
$usepath1=$mypath+"\\python27installer.msi";
(new-object System.Net.WebClient).DownloadFile("https://www.python.org/ftp/python/2.7.10/python-2.7.10.msi", $usepath1);
$usepath1= $mypath + "\\python27installer.msi";
$usepath2 = $mypath +"\\python27install.log";
Start-Process -FilePath msiexec -ArgumentList /i, $usepath1, /quiet -Wait
$path = [Environment]::GetEnvironmentVariable('PATH', 'Machine');
$path += ';' + 'C:\Python27;C:\Python27\Scripts';
[Environment]::SetEnvironmentVariable('PATH', $path, 'Machine');
$usepath1=$mypath+"\IEDriverServer.exe";
Copy-Item $usepath1 C:\Python27 -Force
cmd /c "shutdown -r -t 10"
