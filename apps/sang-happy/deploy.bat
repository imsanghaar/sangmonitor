@echo off
echo ========================================
echo  Deploying Sang Happy Monitor
echo ========================================
echo.
cd /d "%~dp0"
echo Building Happy variant...
call npm run build:happy
echo.
echo Deploying to Vercel...
vercel --prod
echo.
echo Happy Monitor deployed!
echo URL: https://sang-happy.vercel.app
pause
