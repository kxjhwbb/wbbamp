@echo off
echo ==================================
echo ��ӭʹ��WBBamp, ��������hiwbb.com
echo ==================================
echo php.ini�ļ�����������Ҫ����php.ini�����޸�php/php_wbb.ini�ļ���
setlocal enabledelayedexpansion
set file=php\php_wbb.ini
set fileto=php\php.ini
set "file=%file:"=%"
for %%i in ("%file%") do set file=%%~fi
for /f "delims=" %%i in ('type "%file%"') do (
    set str=%%i
    set "str=!str:{wbbamp_ext}=%cd%!"
    echo !str!>>"%file%"_tmp.txt
)
move "%file%"_tmp.txt "%fileto%"
cd /D %~dp0
echo ����Apache...
mshta vbscript:CreateObject("WScript.Shell").Run("apache2\bin\wbb_httpd.exe",0)(window.close)
echo ����Mysql...
mshta vbscript:CreateObject("WScript.Shell").Run("mysql\bin\wbb_mysqld.exe",0)(window.close)

echo ��������������http://localhost
start http://localhost
pause