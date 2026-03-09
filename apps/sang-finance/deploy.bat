@echo off
echo ========================================
echo  Deploying Sang Finance Monitor
echo ========================================
echo.
cd /d "%~dp0"
echo Building Finance variant...
call npm run build:finance
echo.
echo Deploying to Vercel...
vercel --prod
echo.
echo Finance Monitor deployed!
echo URL: https://sang-finance.vercel.app
pause
