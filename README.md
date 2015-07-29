# PythonSeleniumIEDriverSetup

modernIE向けにpython2.7、selenium、IEDriverの自動セットアップをおこないます

必要なもの

startcmd.bat

PythonIEDriverInstall.ps1

IEDriverServer.exe

updatecmd.bat

1.まず、modernIEの起動完了後、管理->仮想マシンの設定からネットワークアダプタを追加してください。また、この時のネットワーク設定はNATをしてください。


2.http://selenium-release.storage.googleapis.com/ からIEDriverの最新版をダウンロードしてください。
ダウンロードしたzipファイルを展開してIEDriverServer.exeとpythoninstall.ps、pythonseleniumIEinstall.batを同じディレクトリに配置してください。


3.スクリプトを実行するにはpythonseleniumIEinstall.batを管理者権限で実行してください。


4.自動で再起動します。再起動後、updatecmd.batを実行してください。
