@echo off
echo ==================================
echo 欢迎使用WBBamp, 反馈博客hiwbb.com
echo ==================================
echo php.ini文件调整（如需要配置php.ini，请修改php/php_wbb.ini文件）
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
echo 启动Apache...
mshta vbscript:CreateObject("WScript.Shell").Run("apache2\bin\wbb_httpd.exe",0)(window.close)
echo 启动Mysql...
mshta vbscript:CreateObject("WScript.Shell").Run("mysql\bin\wbb_mysqld.exe",0)(window.close)

echo 启动结束，访问http://localhost
start http://localhost
pause