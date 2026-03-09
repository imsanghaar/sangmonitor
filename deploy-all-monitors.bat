@echo off
echo ========================================
echo  Sang Monitor - Deploy All Variants
echo ========================================
echo.

cd /d "%~dp0"

echo [1/4] Deploying Sang Tech Monitor...
echo.
vercel --project-name sang-monitor-tech --yes --env VITE_VARIANT=tech --env VITE_BUILD_VARIANT=tech
echo.
echo Tech Monitor deployed! Run this to add domain:
echo   vercel domains add sang-tech.vercel.app
echo.
pause

echo [2/4] Deploying Sang Finance Monitor...
echo.
vercel --project-name sang-monitor-finance --yes --env VITE_VARIANT=finance --env VITE_BUILD_VARIANT=finance
echo.
echo Finance Monitor deployed! Run this to add domain:
echo   vercel domains add sang-finance.vercel.app
echo.
pause

echo [3/4] Deploying Sang Happy Monitor...
echo.
vercel --project-name sang-monitor-happy --yes --env VITE_VARIANT=happy --env VITE_BUILD_VARIANT=happy
echo.
echo Happy Monitor deployed! Run this to add domain:
echo   vercel domains add sang-happy.vercel.app
echo.
pause

echo [4/4] Deploying Sang Commodity Monitor...
echo.
vercel --project-name sang-monitor-commodity --yes --env VITE_VARIANT=commodity --env VITE_BUILD_VARIANT=commodity
echo.
echo Commodity Monitor deployed! Run this to add domain:
echo   vercel domains add sang-commodity.vercel.app
echo.

echo ========================================
echo  All deployments complete!
echo ========================================
echo.
echo Next steps:
echo 1. Add custom domains in Vercel dashboard
echo 2. Connect GitHub repository for each project
echo 3. Configure production branch to 'main'
echo.
pause
