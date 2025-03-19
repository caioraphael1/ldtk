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

pause
