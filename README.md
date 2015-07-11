# PythonSeleniumIEDriverSetup
modernIE向けにpython2.7、selenium、IEDriverの自動セットアップをおこないます

必要なもの
pythoninstall.ps1
pythonseleniumIEinstall.bat
IEDriverServer.exe

まず、 http://selenium-release.storage.googleapis.com/ からIEDriverの最新版をダウンロードしてください。
ダウンロードしたzipファイルを展開してIEDriverServer.exeとpythoninstall.ps、pythonseleniumIEinstall.batを同じディレクトリに配置。

実行するにはpythonseleniumIEinstall.batを管理者権限で実行してください。

pythonseleniumIEinstall.batでURLを用いたBasic認証を可能にするためにレジストリの変更をしているため、有効にするにはゲストOSの再起動をしてください。
再起動後、updatecmd.batを実行してください
