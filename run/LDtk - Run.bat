@echo off
cd /d "%~dp0"/../app

echo Iniciando o programa...

npm run start
if %errorlevel% neq 0 (
    echo.
    echo Erro ao executar npm run start.
    echo.
    pause
    exit /b %errorlevel%
)

pause
