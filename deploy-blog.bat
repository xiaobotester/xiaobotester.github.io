@echo off
chcp 65001 >nul
title Hexo Blog Deploy
echo.
echo  ============================================
echo      Deploy Blog to GitHub Pages
echo  ============================================
echo.

cd /d "C:\Code\MyCode\my-blog"

git add -A
git diff --cached --quiet 2>nul
if %errorlevel% neq 0 (
    echo  [INFO] Changes detected, committing...
    git commit -m "Update blog: %date% %time%"
    echo.
) else (
    echo  [INFO] No new changes detected.
    echo.
)

echo  [INFO] Pushing to GitHub...
git push
echo.

echo  ============================================
echo   Deploy complete! GitHub Actions is building.
echo   Blog URL: https://xiaobotester.github.io
echo  ============================================
echo.
pause
