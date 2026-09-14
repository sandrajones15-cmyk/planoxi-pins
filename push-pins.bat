@echo off
cd /d "%~dp0"
echo Pushing pins to GitHub...
echo.
if exist ".git\index.lock" (
  echo Clearing stale git lock...
  del /f /q ".git\index.lock"
)
git add -A
git commit -m "Update pins"
git push
echo.
echo Done - you can close this window.
pause
