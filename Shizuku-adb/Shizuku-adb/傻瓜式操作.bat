cd %cd%\hao\darqv\weer\chen
@echo off
Title DataBase                                              
Color 0A   
:caozuo
echo. 
echo -------------------------------------    
echo [ɵ��ʽadb]
echo     1.����adb
echo     2.[���ߵ��豸]
echo     3.�ֶ�adb
echo     4.��ȨShizuku ADB 
echo     5.exit
echo.
set /p n=����: 
if "%n%"=="" cls&goto :caozuo 
if "%n%"=="1" call :1
if "%n%"=="2" call :2
if "%n%"=="3" call :3 
if "%n%"=="4" call :4
if /i "%n%"=="n" exit 
pause 
goto :eof 
:1
adb kill-server
adb start-server 
goto :caozuo

:2
adb devices
goto :caozuo

:3
cmd /k 
goto :caozuo 

:4
adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh
 echo ���...
goto :caozuo 

