@echo off
cd /d "%~dp0"/../app

echo Iniciando o programa...

npm run start
if %errorlevel% neq 0 (
    echo.
    echo ^> Erro.
    echo.
    pause
    exit /b %errorlevel%
)

pause
