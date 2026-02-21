@echo off

title UndertaleCFG V3.1
set op=DT?
goto:CheckERROR



:INPUT
set op=0

cls
echo General:
echo --------
echo [01] Exit
echo [02] Start "UNDERTALE.exe" (STEAM)
echo [03] Stop "UNDERTALE.exe"
echo.
echo Save managment:
echo ---------------
echo [04] Reset game
echo [05] Save to Temporary-Save
echo [06] Delete Temporary-Save
echo [07] Open Undertale save folder
echo [08] Open Temporary-Save folder
echo.
echo Load saves:
echo -----------
echo [09] Neutral
echo [10] True Pacifist
echo [11] True Pacifist End
echo [12] Undyne Fight
echo [13] Sans Fight
echo [14] Photoshop Flowey
echo [15] True Lab
echo [16] Temporary-Save
echo.
echo.
echo Note: You must ignore the '0' before a number.
echo.

set /P op=What do you want to do? [1-16]: 
goto:CheckERROR



:MAIN
cd %~dp0

if %op%==1 (
	cls
	echo You shall be released from this hellish program.
	exit /B

) else if %op%==2 (
	cls
	call:LAUNCH

) else if %op%==3 (
	taskkill /F /T /IM UNDERTALE.exe > NUL
	cls
	echo Taskkill for 'UNDERTALE.exe' sent!
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==4 (
	cd "%LocalAppData%\UNDERTALE"
	del file0 & del file8 & del file9 & del undertale.ini
	cls
	color 2
	echo RESET
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==5 (
	cd "SaveFiles\TempSave"
	del file0 & del file8 & del file9 & del undertale.ini
	cd "%LocalAppData%\UNDERTALE"
	copy "file0" "%~dp0SaveFiles\TempSave"
	copy "file8" "%~dp0SaveFiles\TempSave"
	copy "file9" "%~dp0SaveFiles\TempSave"
	copy "undertale.ini" "%~dp0SaveFiles\TempSave"
	cls
	color 2
	echo SAVED
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==6 (
	cd "SaveFiles\TempSave"
	del file0 & del file8 & del file9 & del undertale.ini
	cls
	color 2
	echo DELETED
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==7 (
	explorer.exe "%LocalAppData%\UNDERTALE"

) else if %op%==8 (
	explorer.exe "SaveFiles\TempSave"

) else if %op%==9 (
	cd "%LocalAppData%\UNDERTALE"
	del file0 & del file8 & del file9 & del undertale.ini
	cd "%~dp0SaveFiles\Neutral"
	copy "file0" "%LocalAppData%\UNDERTALE"
	copy "file9" "%LocalAppData%\UNDERTALE"
	copy "undertale.ini" "%LocalAppData%\UNDERTALE"
	cls
	color 2
	echo LOADED
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==10 (
	cd "%LocalAppData%\UNDERTALE"
	del file0 & del file8 & del file9 & del undertale.ini
	cd "%~dp0SaveFiles\TruePacifist"
	copy "file0" "%LocalAppData%\UNDERTALE"
	copy "file8" "%LocalAppData%\UNDERTALE"
	copy "file9" "%LocalAppData%\UNDERTALE"
	copy "undertale.ini" "%LocalAppData%\UNDERTALE"
	cls
	color 2
	echo LOADED
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==11 (
	cd "%LocalAppData%\UNDERTALE"
	del file0 & del file8 & del file9 & del undertale.ini
	cd "%~dp0SaveFiles\TruePacifistEnd"
	copy "file0" "%LocalAppData%\UNDERTALE"
	copy "file8" "%LocalAppData%\UNDERTALE"
	copy "file9" "%LocalAppData%\UNDERTALE"
	copy "undertale.ini" "%LocalAppData%\UNDERTALE"
	cls
	color 2
	echo LOADED
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==12 (
	cd "%LocalAppData%\UNDERTALE"
	del file0 & del file8 & del file9 & del undertale.ini
	cd "%~dp0SaveFiles\UndyneFight"
	copy "file0" "%LocalAppData%\UNDERTALE"
	copy "file9" "%LocalAppData%\UNDERTALE"
	copy "undertale.ini" "%LocalAppData%\UNDERTALE"
	cls
	color 2
	echo LOADED
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==13 (
	cd "%LocalAppData%\UNDERTALE"
	del file0 & del file8 & del file9 & del undertale.ini
	cd "%~dp0SaveFiles\SansFight"
	copy "file0" "%LocalAppData%\UNDERTALE"
	copy "file9" "%LocalAppData%\UNDERTALE"
	copy "undertale.ini" "%LocalAppData%\UNDERTALE"
	cls
	color 2
	echo LOADED
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==14 (
	cd "%LocalAppData%\UNDERTALE"
	del file0 & del file8 & del file9 & del undertale.ini
	cd "%~dp0SaveFiles\PhotoshopFlowey"
	copy "file0" "%LocalAppData%\UNDERTALE"
	copy "file8" "%LocalAppData%\UNDERTALE"
	copy "file9" "%LocalAppData%\UNDERTALE"
	copy "undertale.ini" "%LocalAppData%\UNDERTALE"
	cls
	color 2
	echo LOADED
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==15 (
	cd "%LocalAppData%\UNDERTALE"
	del file0 & del file8 & del file9 & del undertale.ini
	cd "%~dp0SaveFiles\TrueLab"
	copy "file0" "%LocalAppData%\UNDERTALE"
	copy "file8" "%LocalAppData%\UNDERTALE"
	copy "file9" "%LocalAppData%\UNDERTALE"
	copy "undertale.ini" "%LocalAppData%\UNDERTALE"
	cls
	color 2
	echo LOADED
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==16 (
	cd "%LocalAppData%\UNDERTALE"
	del file0 & del file8 & del file9 & del undertale.ini
	cd "%~dp0SaveFiles\TempSave"
	copy "file0" "%LocalAppData%\UNDERTALE"
	copy "file8" "%LocalAppData%\UNDERTALE"
	copy "file9" "%LocalAppData%\UNDERTALE"
	copy "undertale.ini" "%LocalAppData%\UNDERTALE"
	cls
	color 2
	echo LOADED
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==42 (
	cls
	color
	echo You know everything, don't you?
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==69 (
	cls
	echo You're funny!
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==404 (
	cls
	color 4
	echo ERROR: Easter egg not found!
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==420 (
	cls
	echo Are you high?
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==666 (
	cls
	color 4
	echo No satanic rituals in my program!
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==777 (
	cls
	color 2
	echo You hit the Jackpot!
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==911 (
	cls
	echo Emergency mode activated! Calling Sans...
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==1234 (
	cls
	echo Counting is fun!
	echo.
	echo Press any key to continue...
	pause > NUL

) else if /I %op%==sudo (
	cls
	echo Nice try, but you don't have admin rights!
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==USFF! (
	cls
	color a
	echo Undertale save folder found!
	echo.
	echo Press any key to continue...
	pause > NUL

) else if %op%==DT? (
	cls
	echo Loading...
	timeout /t 1 /NOBREAK > NUL

) else (
	cls
	color 4
	echo Invalid operation!
	echo.
	echo Press any key to continue...
	pause > NUL
)

color f
goto:INPUT



:CheckERROR
if exist "%LocalAppData%\UNDERTALE" (
	goto:MAIN

) else (
	cls
	set op=USFF!
	color 4
	echo An error occurred while trying to locate the Undertale save folder.
	echo.
	echo Press any key to continue...
	pause > NUL
	color f
	goto:RETRY
)



:RETRY
call:HELP
set retry=0
set /P retry=Retry? (Y/N): 
if /I %retry%==Y (
	goto:CheckERROR

) else if /I %retry%==N (
	cls
	echo You shall be released from this hellish program.
	exit /B

) else (
	cls
	color 4
	echo Invalid input! Type 'Y' or 'N'!
	pause > NUL
	color f
	goto:RETRY
)



:LAUNCH
if exist "%ProgramFiles(x86)%\Steam\steamapps\common\Undertale" (
	echo Launching Undertale via Steam...
	start steam://rungameid/391540
	:WAIT
	tasklist | findstr UNDERTALE.exe > NUL || goto:WAIT
	goto:EOF

) else (
	cls
	echo It looks like you don't have the game on Steam.
	pause > NUL
	goto:EOF
)



:HELP
cls
echo Make sure this directory exists:
echo --------------------------------
echo C:\Users\[YourUser]\AppData\Local\UNDERTALE\
echo.
echo.
echo.
goto:EOF
