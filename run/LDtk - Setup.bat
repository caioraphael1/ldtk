@echo off


cd /d "%~dp0"/..

echo Obtendo dependências 'setup.hxml'
haxe setup.hxml
if %errorlevel% neq 0 (
    echo.
    echo ^> Erro.
    echo.
    pause
    exit /b %errorlevel%
)
echo.
echo ^> Sucesso.
echo.


echo Fetching schema do do 'https://github.com/caioraphael1/ldtk-haxe-api'
haxelib git ldtk-haxe-api https://github.com/caioraphael1/ldtk-haxe-api.git caio
if %errorlevel% neq 0 (
    echo.
    echo ^> Erro.
    echo.
    pause
    exit /b %errorlevel%
)
echo.
echo ^> Sucesso.
echo.



cd /d "%~dp0"/../app


echo Instalando Electron
npm i
if %errorlevel% neq 0 (
    echo.
    echo Erro.
    echo.
    pause
    exit /b %errorlevel%
)
echo.
echo ^> Sucesso.
echo.


cd /d "%~dp0"/..


echo Compilando main.debug.hxml...
haxe main.debug.hxml
if %errorlevel% neq 0 (
    echo.
    echo ^> Erro.
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
    echo ^> Erro.
    echo.
    pause
    exit /b %errorlevel%
)
echo.
echo ^> Sucesso.
echo.

pause

