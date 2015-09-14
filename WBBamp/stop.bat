@echo off
echo ==================================
echo 欢迎使用WBBamp, 反馈博客hiwbb.com
echo ==================================
echo 杀死httpd...
taskkill /F /IM wbb_httpd.exe
echo 杀死mysqld...
taskkill /F /IM wbb_mysqld.exe
echo 结束!
pause