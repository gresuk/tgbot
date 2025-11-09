@echo off
title Cleaning TEMP...
echo ============================
echo   TEMP CLEANUP STARTED
echo ============================

:: Clean %TEMP%
echo Cleaning %TEMP% ...
del /f /s /q "%TEMP%\*" >nul 2>&1
for /d %%i in ("%TEMP%\*") do rd /s /q "%%i" >nul 2>&1

:: Clean Windows Temp
echo Cleaning C:\Windows\Temp ...
del /f /s /q "C:\Windows\Temp\*" >nul 2>&1
for /d %%i in ("C:\Windows\Temp\*") do rd /s /q "%%i" >nul 2>&1

echo ----------------------------
echo   TEMP CLEANUP COMPLETE
echo ----------------------------
exit
