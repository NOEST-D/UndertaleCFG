@echo off

title UndertaleCFG SETUP V1.2
set instDIR=%LocalAppData%\UndertaleCFG
set op=0

:MAIN
echo -------------------------------------------
echo UndertaleCFG SETUP V1.2     Author: NOEST-D
echo -------------------------------------------
echo Welcome to this simple setup for UndertaleCFG V3.1!
echo.
echo Installation directory: %instDIR%\
echo [1] Install UndertaleCFG V3.1
echo [2] Uninstall UndertaleCFG
echo [3] Exit
echo.
set /P op=What do you want to do? [1-3]: 

if %op%==1 (
	cls
	goto:INSTALL
) else if %op%==2 (
	cls
	goto:UNINSTALL
) else if %op%==3 (
	exit /B
) else (
	echo.
	echo Unvalid operation! Enter '1', '2', or '3'!
	echo Press any key to try again.
	pause > NUL
	cls
	goto:MAIN
)



:INSTALL
echo Starting install...
echo.
echo mkdir "%instDIR%"
mkdir "%instDIR%"
echo.
echo Downloading UndertaleCFG V3.1 archive...
curl -L -o "%instDIR%\ucfgV3x1.zip" https://raw.githubusercontent.com/NOEST-D/UndertaleCFG/main/setup/source/ucfgV3x1.zip
echo Done.
echo.

echo Extracting archive...
powershell -Command "Expand-Archive -Path '%instDIR%\ucfgV3x1.zip' -DestinationPath '%instDIR%' -Force"
echo Done.
echo.

echo Deleting archive...
echo del "%instDIR%\ucfgV3x1.zip"
del "%instDIR%\ucfgV3x1.zip"
echo Done.
echo.

echo Creating start menu shortcut...
echo mkdir "%AppData%\Microsoft\Windows\Start Menu\Programs\UndertaleCFG\"
mkdir "%AppData%\Microsoft\Windows\Start Menu\Programs\UndertaleCFG\"
echo TARGET=%instDIR%\ucfgV3x1.bat
set TARGET=%instDIR%\ucfgV3x1.bat
echo SHORTCUT=%appdata%\Microsoft\Windows\Start Menu\Programs\UndertaleCFG\UndertaleCFG.lnk
set SHORTCUT=%appdata%\Microsoft\Windows\Start Menu\Programs\UndertaleCFG\UndertaleCFG.lnk
echo ICON=%instDIR%\icon.ico
set ICON=%instDIR%\icon.ico
call:MKSC
echo Done.
echo.

echo Creating desktop shortcut...
echo TARGET=%instDIR%\ucfgV3x1.bat
set TARGET=%instDIR%\ucfgV3x1.bat
echo SHORTCUT=%USERPROFILE%\Desktop\UndertaleCFG.lnk
set SHORTCUT=%USERPROFILE%\Desktop\UndertaleCFG.lnk
echo ICON=%instDIR%\icon.ico
set ICON=%instDIR%\icon.ico
call:MKSC
echo Done.
echo.

echo Install finished! Press any key to exit.
pause > NUL
exit /B



:UNINSTALL
echo Removing UndertaleCFG directory and all its files...
echo rmdir "%instDIR%"
rmdir /S /Q "%instDIR%"
echo Done.
echo.

echo Removing start menu shortcut...
echo rmdir "%AppData%\Microsoft\Windows\Start Menu\Programs\UndertaleCFG"
rmdir /S /Q "%AppData%\Microsoft\Windows\Start Menu\Programs\UndertaleCFG"
echo Done.
echo.

echo Removing Desktop shortcut...
echo del "%USERPROFILE%\Desktop\UndertaleCFG.lnk"
del "%USERPROFILE%\Desktop\UndertaleCFG.lnk"
echo Done.
echo.

echo Uninstall finished! Press any key to exit.
pause > NUL
exit /B



:MKSC
echo Set oWS = WScript.CreateObject("WScript.Shell") > "%TEMP%\~createshortcut.vbs"
echo sLinkFile = "%SHORTCUT%" >> "%TEMP%\~createshortcut.vbs"
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> "%TEMP%\~createshortcut.vbs"
echo oLink.TargetPath = "%TARGET%" >> "%TEMP%\~createshortcut.vbs"
echo oLink.IconLocation = "%ICON%" >> "%TEMP%\~createshortcut.vbs"
echo oLink.Save >> "%TEMP%\~createshortcut.vbs"
cscript /nologo "%TEMP%\~createshortcut.vbs"
del "%TEMP%\~createshortcut.vbs"
goto:EOF
