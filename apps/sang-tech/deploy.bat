@echo off
echo ========================================
echo  Deploying Sang Tech Monitor
echo ========================================
echo.
cd /d "%~dp0"
echo Building Tech variant...
call npm run build:tech
echo.
echo Deploying to Vercel...
vercel --prod
echo.
echo Tech Monitor deployed!
echo URL: https://sang-tech.vercel.app
pause
