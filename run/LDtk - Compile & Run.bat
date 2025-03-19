@echo off
cd /d "%~dp0"/..

echo Compilando main.debug.hxml...

haxe main.debug.hxml
if %errorlevel% neq 0 (
    echo.
    echo Erro ao compilar.
    echo.
    pause
    exit /b %errorlevel%
)

echo.
echo ^> Sucesso.
echo.

echo Compilando renderer.debug.hxml...
haxe renderer.debug.hxml
if %errorlevel% neq 0 (
    echo.
    echo Erro ao compilar.
    echo.
    pause
    exit /b %errorlevel%
)
echo.
echo ^> Sucesso.

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
