ECHO OFF
TITLE Custom Hwid Checker
ECHO **********************************
Color 05
ECHO **********************************
:start
cls
echo **********************************
ECHO Disk
wmic diskdrive get model, serialnumber
ECHO BIOS
wmic diskdrive get model, serialnumber
wmic bios get serialnumber
echo ********************************** HWID CHECKER - Made by spantaw CUSTOMIZED                                                
ECHO Motherboard
wmic baseboard get serialnumber
echo **********************************
ECHO smBIOS UUID
wmic path win32_computersystemproduct get uuid
getmac
echo **********************************
echo Press K To Refresh Your Serials.
pause>nul
goto start