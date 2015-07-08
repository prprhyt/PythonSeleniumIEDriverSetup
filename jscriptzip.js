var objShell = new ActiveXObject("shell.application");
var fs = new ActiveXObject("Scripting.FileSystemObject");
while(1){
if(fs.FileExists("C:\\pythonseleniumsetup\\IEdriver.zip"){
break;
}
WScript.sleep(5000);
}
WScript.sleep(25000);
var objInput = objShell.NameSpace("C:\\pythonseleniumsetup\\IEdriver.zip");
var objOutput = objShell.NameSpace("C:\\Python27");
objOutput.CopyHere(objInput.Items(), 0);
