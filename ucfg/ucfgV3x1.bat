@echo off

title UndertaleCFG V3.1
set "op=DT?"
goto :CheckERROR



:INPUT
set "op=0"

cls
echo General:
echo --------
echo [01] Exit
echo [02] Start "UNDERTALE.exe" (STEAM)
echo [03] Stop "UNDERTALE.exe"
echo.
echo Save management:
echo ---------------
echo [04] Reset game
echo [05] Save to Temporary Save
echo [06] Delete Temporary Save
echo [07] Open Temporary Save folder
echo [08] Open Undertale save folder
echo.
echo Load saves:
echo -----------
echo [09] Neutral
echo [10] True Pacifist
echo [11] True Pacifist Ending
echo [12] Undyne Fight
echo [13] Sans Fight
echo [14] Photoshop Flowey
echo [15] True Lab
echo [16] Temporary Save
echo.
echo.
echo Note: You may enter numbers with or without leading zeroes.
echo.

set /P "op=What do you want to do? [1-16]: "
for /f "tokens=* delims=0" %%A in ("%op%") do set "op=%%A"
goto :CheckERROR



:MAIN
cd /d "%~dp0"

if "%op%"=="1" (
	cls
	echo You shall be released from this hellish program.
	exit /B

) else if "%op%"=="2" (
	cls
	call :LAUNCH

) else if "%op%"=="3" (
	taskkill /F /T /IM UNDERTALE.exe >nul 2>&1
	cls
	echo Taskkill command for "UNDERTALE.exe" sent!
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="4" (
	cd /d "%LocalAppData%\UNDERTALE"
	del /q "file0" "file8" "file9" "undertale.ini" >nul 2>&1
	cls
	color 2
	echo RESET
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="5" (
	cd /d "%~dp0SaveFiles\TempSave"
	del /q "file0" "file8" "file9" "undertale.ini" >nul 2>&1

	cd /d "%LocalAppData%\UNDERTALE"
	copy /y "file0" "%~dp0SaveFiles\TempSave" >nul
	copy /y "file8" "%~dp0SaveFiles\TempSave" >nul
	copy /y "file9" "%~dp0SaveFiles\TempSave" >nul
	copy /y "undertale.ini" "%~dp0SaveFiles\TempSave" >nul

	cls
	color 2
	echo SAVED
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="6" (
	cd /d "%~dp0SaveFiles\TempSave"
	del /q "file0" "file8" "file9" "undertale.ini" >nul 2>&1
	cls
	color 2
	echo DELETED
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="7" (
	explorer.exe "%~dp0SaveFiles\TempSave"

) else if "%op%"=="8" (
	explorer.exe "%LocalAppData%\UNDERTALE"

) else if "%op%"=="9" (
	cd /d "%LocalAppData%\UNDERTALE"
	del /q "file0" "file8" "file9" "undertale.ini" >nul 2>&1

	cd /d "%~dp0SaveFiles\Neutral"
	copy /y "file0" "%LocalAppData%\UNDERTALE" >nul
	copy /y "file9" "%LocalAppData%\UNDERTALE" >nul
	copy /y "undertale.ini" "%LocalAppData%\UNDERTALE" >nul

	cls
	color 2
	echo LOADED
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="10" (
	cd /d "%LocalAppData%\UNDERTALE"
	del /q "file0" "file8" "file9" "undertale.ini" >nul 2>&1

	cd /d "%~dp0SaveFiles\TruePacifist"
	copy /y "file0" "%LocalAppData%\UNDERTALE" >nul
	copy /y "file8" "%LocalAppData%\UNDERTALE" >nul
	copy /y "file9" "%LocalAppData%\UNDERTALE" >nul
	copy /y "undertale.ini" "%LocalAppData%\UNDERTALE" >nul

	cls
	color 2
	echo LOADED
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="11" (
	cd /d "%LocalAppData%\UNDERTALE"
	del /q "file0" "file8" "file9" "undertale.ini" >nul 2>&1

	cd /d "%~dp0SaveFiles\TruePacifistEnding"
	copy /y "file0" "%LocalAppData%\UNDERTALE" >nul
	copy /y "file8" "%LocalAppData%\UNDERTALE" >nul
	copy /y "file9" "%LocalAppData%\UNDERTALE" >nul
	copy /y "undertale.ini" "%LocalAppData%\UNDERTALE" >nul

	cls
	color 2
	echo LOADED
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="12" (
	cd /d "%LocalAppData%\UNDERTALE"
	del /q "file0" "file8" "file9" "undertale.ini" >nul 2>&1

	cd /d "%~dp0SaveFiles\UndyneFight"
	copy /y "file0" "%LocalAppData%\UNDERTALE" >nul
	copy /y "file9" "%LocalAppData%\UNDERTALE" >nul
	copy /y "undertale.ini" "%LocalAppData%\UNDERTALE" >nul

	cls
	color 2
	echo LOADED
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="13" (
	cd /d "%LocalAppData%\UNDERTALE"
	del /q "file0" "file8" "file9" "undertale.ini" >nul 2>&1

	cd /d "%~dp0SaveFiles\SansFight"
	copy /y "file0" "%LocalAppData%\UNDERTALE" >nul
	copy /y "file9" "%LocalAppData%\UNDERTALE" >nul
	copy /y "undertale.ini" "%LocalAppData%\UNDERTALE" >nul

	cls
	color 2
	echo LOADED
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="14" (
	cd /d "%LocalAppData%\UNDERTALE"
	del /q "file0" "file8" "file9" "undertale.ini" >nul 2>&1

	cd /d "%~dp0SaveFiles\PhotoshopFlowey"
	copy /y "file0" "%LocalAppData%\UNDERTALE" >nul
	copy /y "file8" "%LocalAppData%\UNDERTALE" >nul
	copy /y "file9" "%LocalAppData%\UNDERTALE" >nul
	copy /y "undertale.ini" "%LocalAppData%\UNDERTALE" >nul

	cls
	color 2
	echo LOADED
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="15" (
	cd /d "%LocalAppData%\UNDERTALE"
	del /q "file0" "file8" "file9" "undertale.ini" >nul 2>&1

	cd /d "%~dp0SaveFiles\TrueLab"
	copy /y "file0" "%LocalAppData%\UNDERTALE" >nul
	copy /y "file8" "%LocalAppData%\UNDERTALE" >nul
	copy /y "file9" "%LocalAppData%\UNDERTALE" >nul
	copy /y "undertale.ini" "%LocalAppData%\UNDERTALE" >nul

	cls
	color 2
	echo LOADED
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="16" (
	cd /d "%LocalAppData%\UNDERTALE"
	del /q "file0" "file8" "file9" "undertale.ini" >nul 2>&1

	cd /d "%~dp0SaveFiles\TempSave"
	copy /y "file0" "%LocalAppData%\UNDERTALE" >nul
	copy /y "file8" "%LocalAppData%\UNDERTALE" >nul
	copy /y "file9" "%LocalAppData%\UNDERTALE" >nul
	copy /y "undertale.ini" "%LocalAppData%\UNDERTALE" >nul

	cls
	color 2
	echo LOADED
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="42" (
	cls
	color
	echo You know everything, don't you?
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="69" (
	cls
	echo You're funny!
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="404" (
	cls
	color 4
	echo ERROR: Easter egg not found!
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="420" (
	cls
	echo Are you high?
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="666" (
	cls
	color 4
	echo No satanic rituals in my program!
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="777" (
	cls
	color 2
	echo You hit the jackpot!
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="911" (
	cls
	echo Emergency mode activated! Calling Sans...
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="1234" (
	cls
	echo Counting is fun!
	echo.
	echo Press any key to continue...
	pause >nul

) else if /I "%op%"=="sudo" (
	cls
	echo Nice try, but you don't have admin rights!
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="USFF!" (
	cls
	color a
	echo Undertale save folder found!
	echo.
	echo Press any key to continue...
	pause >nul

) else if "%op%"=="DT?" (
	cls
	echo Loading...
	timeout /t 1 /nobreak >nul

) else (
	cls
	color 4
	echo Invalid operation!
	echo.
	echo Press any key to continue...
	pause >nul
)

color f
goto :INPUT



:CheckERROR
if exist "%LocalAppData%\UNDERTALE" (
	goto :MAIN

) else (
	cls
	set "op=USFF!"
	color 4
	echo An error occurred while trying to locate the Undertale save folder.
	echo.
	echo Press any key to continue...
	pause >nul
	color f
	goto :RETRY
)



:RETRY
cls
echo Make sure this directory exists:
echo --------------------------------
echo C:\Users\[YourUser]\AppData\Local\UNDERTALE\
echo.
echo.

set "retry=0"
set /P "retry=Retry? (Y/N): "

if /I "%retry%"=="Y" (
	goto :CheckERROR

) else if /I "%retry%"=="N" (
	cls
	echo You shall be released from this hellish program.
	exit /B

) else (
	cls
	color 4
	echo Invalid input! Type "Y" or "N"!
	echo.
	echo Press any key to continue...
	pause >nul
	color f
	goto :RETRY
)



:LAUNCH
if exist "%ProgramFiles(x86)%\Steam\steamapps\common\Undertale" (
	echo Launching Undertale via Steam...
	start "" "steam://rungameid/391540"
	call :WAIT

) else (
	cls
	echo It looks like you don't have the game on Steam.
	echo.
	echo Press any key to continue...
	pause >nul
	goto :EOF
)



:WAIT
timeout /t 1 /nobreak >nul
tasklist | findstr /I "UNDERTALE.exe" >nul || goto :WAIT
goto :EOF
