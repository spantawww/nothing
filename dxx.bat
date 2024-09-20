@echo off
setlocal enabledelayedexpansion

color 01
echo .

echo.
for /f "delims=" %%i in ('call randstr.bat 10') do set "output9=%%i"
for /f "delims=" %%i in ('call randstr.bat 14') do set "output91=%%i"
for /f "delims=" %%i in ('call randstr.bat 10') do set "output92=%%i"

cd AMI
(
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

cd ..
cd NETWORK
call MAC.bat

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

pause
