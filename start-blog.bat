@echo off
chcp 65001 >nul
title Hexo Blog Server
echo.
echo  ============================================
echo        xiaobotester's Blog - Local Preview
echo  ============================================
echo.
echo  Starting Hexo server...
echo.

cd /d "C:\Code\MyCode\my-blog"

if not exist "node_modules" (
    echo  [INFO] First run, installing dependencies...
    call npm install
    echo.
)

echo  [INFO] Generating static files...
call npx hexo clean >nul 2>&1
call npx hexo generate
echo.

echo  ============================================
echo   Blog is running! Open in browser:
echo.
echo   http://localhost:4000
echo.
echo   Press Ctrl+C to stop the server
echo  ============================================
echo.
call npx hexo server -p 4000

pause
