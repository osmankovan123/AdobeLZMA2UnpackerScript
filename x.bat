r@echo off
echo Watching for changes to C:\adobeTemp ...
:top
cd %~dp0
for /r %%a in ("*") do robocopy "C:\adobeTemp" "D:\AdobeLZMA2" /E /NOOFFLOAD /W:1 | find /v "File(s) copied"
timeout /t 0 >nul
goto :top