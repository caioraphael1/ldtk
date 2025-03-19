@echo off
cd /d "%~dp0"/..

echo Compilando main.debug.hxml...
haxe main.debug.hxml
if %errorlevel% neq 0 (
    echo Erro ao compilar main.debug.hxml.
    pause
    exit /b %errorlevel%
)
echo "> Sucesso."


echo Compilando renderer.debug.hxml...
haxe renderer.debug.hxml
if %errorlevel% neq 0 (
    echo Erro ao compilar renderer.debug.hxml.
    pause
    exit /b %errorlevel%
)
echo "> Sucesso."

pause
