@echo off
cd /d "%~dp0"
echo Pushing pins to GitHub...
echo.
git add -A
git commit -m "Update pins"
git push
echo.
echo Done - you can close this window.
pause
