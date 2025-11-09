@echo off
title Safe TEMP Cleaner
echo Cleaning unused TEMP files...

:: Clean only files older than 1 day in %TEMP%
forfiles /p "%TEMP%" /s /m *.* /d -1 /c "cmd /c del /f /q @path" >nul 2>&1

:: Clean only files older than 1 day in C:\Windows\Temp
forfiles /p "C:\Windows\Temp" /s /m *.* /d -1 /c "cmd /c del /f /q @path" >nul 2>&1

echo Done.
exit
