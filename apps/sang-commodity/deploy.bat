@echo off
echo ========================================
echo  Deploying Sang Commodity Monitor
echo ========================================
echo.
cd /d "%~dp0"
echo Building Commodity variant...
call npm run build:commodity
echo.
echo Deploying to Vercel...
vercel --prod
echo.
echo Commodity Monitor deployed!
echo URL: https://sang-commodity.vercel.app
pause
