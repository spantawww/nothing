@echo off
setlocal enabledelayedexpansion

if "%1"=="" (
    echo Usage: %~nx0 [length] [/v]
    echo Example: %~nx0 10 /v
    goto :eof
)

set "length=%1"
set "exclude_volume=%2"

set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
if "%exclude_volume%"=="/v" (
    set "chars=ABCDEF0123456789"
)

set "randomStr="

for /L %%i in (1,1,%length%) do (
    set /a "index=!random! %% 16"
    for %%a in (!index!) do (
        set "randomStr=!randomStr!!chars:~%%a,1!"
    )
)

echo !randomStr!

exit /b