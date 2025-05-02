@echo off
set /p GIT_USER=Enter your GitHub username:
set /p REPO_NAME=Enter repository name (e.g., horizonco-site):
set /p TOKEN=Enter your GitHub personal access token:

:: Инициализация git репозитория
git init
git remote add origin https://%GIT_USER%:%TOKEN%@github.com/%GIT_USER%/%REPO_NAME%.git

git add .
git commit -m "Initial commit"
git branch -M main
git push -u origin main

echo Done! Go to Render and link the repository.
pause
