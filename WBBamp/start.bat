@echo off
cd /D %~dp0
echo ����Apache...
mshta vbscript:CreateObject("WScript.Shell").Run("apache2\bin\wbb_httpd.exe",0)(window.close)
echo ����Mysql...
mshta vbscript:CreateObject("WScript.Shell").Run("mysql\bin\wbb_mysqld.exe",0)(window.close)

echo ��������!
pause