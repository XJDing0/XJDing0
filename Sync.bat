@echo off
echo ----------------------------------------
echo   Project: %CD%
echo   Status: Synchronizing...
echo ----------------------------------------

:: 1. Pull
echo [1/3] Pulling from cloud...
git pull origin main

:: 2. Add and Commit
echo [2/3] Recording changes...
git add .
git commit -m "Auto-sync: %date% %time%"

:: 3. Push
echo [3/3] Pushing to cloud...
git push origin main

echo ----------------------------------------
echo   Success!
echo ----------------------------------------
pause