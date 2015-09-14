@echo off
echo …±À¿httpd...
taskkill /F /IM wbb_httpd.exe
echo …±À¿mysqld...
taskkill /F /IM wbb_mysqld.exe

cd /D %~dp0
echo ∆Ù∂ØApache...
mshta vbscript:CreateObject("WScript.Shell").Run("apache2\bin\wbb_httpd.exe",0)(window.close)
echo ∆Ù∂ØMysql...
mshta vbscript:CreateObject("WScript.Shell").Run("mysql\bin\wbb_mysqld.exe",0)(window.close)

echo ÷ÿ∆ÙΩ· ¯!
pause