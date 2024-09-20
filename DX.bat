::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFChETQqWPVyGIrAP4/z0/9aUskISUusxf8/P0r2AJ/MvwVfhTIwolklKl8QKCQkWewquDg==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

title KreYze Permanently Spoofer v1.5
echo Welcome To KreYze Perm Spoofer
echo HWID Spoofer - Serial Changer Version: 1.5
echo Developers: SpantaW - KreYze

echo.

@echo off
setlocal enabledelayedexpansion

color 01
echo Welcome To KreYze HWID Spoofer
echo Product: Perm Spoofer
echo Status: Undetected/FN Tournament Ready
echo . 
set /p isAsus=Are You On Asus Motherboard? (Yes, No)? 

echo.
echo Example motherboards: HP, Dell
set /p isLocked=Are You On A Locked Motherboard? (Yes, No)? 

cd /d "%~dp0"

echo Permanently Spoofing..

@echo off
for /f "delims=" %%i in ('call randstr.bat 10') do set "output9=%%i"
for /f "delims=" %%i in ('call randstr.bat 14') do set "output91=%%i"
for /f "delims=" %%i in ('call randstr.bat 10') do set "output92=%%i"

cd AMI

if /i "%isLocked%" == "No" (
    AMIDEWINx64.EXE /IVN "AMI" >nul 2>&1
    AMIDEWINx64.EXE /SM "System manufacturer" >nul 2>&1
    AMIDEWINx64.EXE /SP "System product name" >nul 2>&1
    AMIDEWINx64.EXE /SV "System version" >nul 2>&1
    AMIDEWINx64.EXE /SS %output9% >nul 2>&1
    AMIDEWINx64.EXE /SU AUTO >nul 2>&1
    AMIDEWINx64.EXE /SK "To Be Filled By O.E.M" >nul 2>&1
    AMIDEWINx64.EXE /SF "To Be Filled By O.E.M." >nul 2>&1
    AMIDEWINx64.EXE /BM "ASRock" >nul 2>&1
    AMIDEWINx64.EXE /BP "B560M-C" >nul 2>&1
    AMIDEWINx64.EXE /BV " " >nul 2>&1
    AMIDEWINx64.EXE /BS %output91% >nul 2>&1
    AMIDEWINx64.EXE /BT "Default string" >nul 2>&1
    AMIDEWINx64.EXE /BLC "Default string" >nul 2>&1
    AMIDEWINx64.EXE /CM "Default string" >nul 2>&1
    AMIDEWINx64.EXE /CV "Default string" >nul 2>&1
    AMIDEWINx64.EXE /CS %output92% >nul 2>&1
    AMIDEWINx64.EXE /CA "Default string" >nul 2>&1
    AMIDEWINx64.EXE /CSK "SKU" >nul 2>&1
    AMIDEWINx64.EXE /PSN "To Be Filled By O.E.M." >nul 2>&1
    AMIDEWINx64.EXE /PAT "To Be Filled By O.E.M." >nul 2>&1
    AMIDEWINx64.EXE /PPN "To Be Filled By O.E.M." >nul 2>&1
)

    echo Permanently Spoofed Serials!
)

if /i "%isAsus%" == "Yes" (
    echo Spoofing Device..

    AFUWINx64.exe BIOS.rom /o
    AFUWINx64.exe BIOS.rom /p

    echo Permanently Spoofed Serials!
)

if /i "%isLocked%" == "Yes" (
    echo.
    echo Please Wait A Bit...

    cd USB
    cd efi
    cd boot

    (
    echo echo -off
    echo AMIDEEFIx64.efi /IVN "AMI"
    echo AMIDEEFIx64.efi /SM "System manufacturer"
    echo AMIDEEFIx64.efi /SP "System product name"
    echo AMIDEEFIx64.efi /SV "System version"
    echo AMIDEEFIx64.efi /SS "%output9%"
    echo AMIDEEFIx64.efi /SU AUTO
    echo AMIDEEFIx64.efi /SK "To Be Filled By O.E.M"
    echo AMIDEEFIx64.efi /SF "To Be Filled By O.E.M."
    echo AMIDEEFIx64.efi /BM "ASRock"
    echo AMIDEEFIx64.efi /BP "B560M-C"
    echo AMIDEEFIx64.efi /BV " "
    echo AMIDEEFIx64.efi /BS "%output91%"
    echo AMIDEEFIx64.efi /BT "Default string"
    echo AMIDEEFIx64.efi /BLC "Default string"
    echo AMIDEEFIx64.efi /CM "Default string"
    echo AMIDEEFIx64.efi /CV "Default string"
    echo AMIDEEFIx64.efi /CS "%output92%"
    echo AMIDEEFIx64.efi /CA "Default string"
    echo AMIDEEFIx64.efi /CSK "SKU"
    echo AMIDEEFIx64.efi /PSN "To Be Filled By O.E.M."
    echo AMIDEEFIx64.efi /PAT "To Be Filled By O.E.M."
    echo AMIDEEFIx64.efi /PPN "To Be Filled By O.E.M."
    echo exit
    ) > "startup.nsh"

    cd ..
    cd ..
    cd ..

    echo .
    echo Ask For Support!
    echo Open A Ticket And Send A Screenshot!
    pause
)

echo VolumeId Spoofing..

cd ..
for /f "delims=" %%i in ('call randstr.bat 4 /v') do set "output3=%%i"
for /f "delims=" %%i in ('call randstr.bat 4 /v') do set "output31=%%i"
for /f "delims=" %%i in ('call randstr.bat 4 /v') do set "output32=%%i"
for /f "delims=" %%i in ('call randstr.bat 4 /v') do set "output33=%%i"
for /f "delims=" %%i in ('call randstr.bat 4 /v') do set "output34=%%i"
for /f "delims=" %%i in ('call randstr.bat 4 /v') do set "output35=%%i"
for /f "delims=" %%i in ('call randstr.bat 4 /v') do set "output36=%%i"
for /f "delims=" %%i in ('call randstr.bat 4 /v') do set "output37=%%i"
cd VOLUME

Volumeid64.exe C: %output3%-%output31% /accepteula
Volumeid64.exe D: %output32%-%output33% /accepteula
Volumeid64.exe E: %output34%-%output35% /accepteula
Volumeid64.exe F: %output36%-%output37% /accepteula

echo VolumeIds Permanently Spoofed!
echo MAC Spoofing..

cd ..
cd NETWORK
call MAC.bat

echo MAC Permanently Spoofed!

netsh winsock reset
netsh winsock reset catalog
netsh int ip reset
netsh advfirewall reset
netsh int reset all
netsh int ipv4 reset
netsh int ipv6 reset
ipconfig /release
ipconfig /flushdns
ipconfig /renew
ipconfig /flushdns
WMIC PATH WIN32_NETWORKADAPTER WHERE PHYSICALADAPTER=TRUE CALL DISABLE >nul 2>&1
WMIC PATH WIN32_NETWORKADAPTER WHERE PHYSICALADAPTER=TRUE CALL ENABLE >nul 2>&1
arp -d
net stop winmgmt /y
net start winmgmt

echo Spoofing Proccess Done!
echo Checking Spoofed Things..
echo .
echo Mac Succesfully Spoofed!
echo Bios Succesfully Spoofed!
echo Motherboard UUID Succesfully Spoofed!
echo Network Succesfully Spoofed!
echo SmBios Succesfully Spoofed!
echo PC ID Succesfully Spoofed!
echo TPM Bypass Didn't Spoofed!
echo Succesfully Spoofed Serials: 6 Failed: 1 = Valorant Users: Ask For Support To Bypass TPM!
pause
pause
