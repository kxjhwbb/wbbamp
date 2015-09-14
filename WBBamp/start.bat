@echo off
cd /D %~dp0
echo 启动Apache...
mshta vbscript:CreateObject("WScript.Shell").Run("apache2\bin\wbb_httpd.exe",0)(window.close)
echo 启动Mysql...
mshta vbscript:CreateObject("WScript.Shell").Run("mysql\bin\wbb_mysqld.exe",0)(window.close)

echo 启动结束!
pause