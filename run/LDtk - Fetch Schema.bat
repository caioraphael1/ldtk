@echo off
cd /d "%~dp0"/..

echo Fetching 'https://github.com/caioraphael1/ldtk-haxe-api.git caio'

haxelib git ldtk-haxe-api https://github.com/caioraphael1/ldtk-haxe-api.git caio

if %errorlevel% neq 0 (
    echo.
    echo Erro no fetch.
    echo.
    pause
    exit /b %errorlevel%
)

echo.
echo ^> Sucesso.
echo.

pause
