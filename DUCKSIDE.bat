@echo off
if /i not "%~1"=="updated" (
    echo Updating %~nx0 ...
    >nul 2>&1 powershell iwr "https://raw.githubusercontent.com/anonPwn/Batch/refs/heads/main/DUCKSIDE.bat" -OutFile "%temp%\%~nx0"
    >nul 2>&1 move /y "%temp%\%~nx0" "%~dpnx0"
    >nul 2>&1 powershell start "%~0" updated & exit /b
)
cd /d "%~dp0"
pause
set /a 'Version'='Version 1.2'
echo " ____ ___            .___       __  .__                ";
echo "|    |   \______   __| _/____ _/  |_|__| ____    ____  ";
echo "|    |   /\____ \ / __ |\__  \\   __\  |/    \  / ___\ ";
echo "|    |  / |  |_> > /_/ | / __ \|  | |  |   |  \/ /_/  >";
echo "|______/  |   __/\____ |(____  /__| |__|___|  /\___  / ";
echo "          |__|        \/     \/             \//_____/  ";
echo "                                                       ";
echo ==========================================================
echo Succesfully Updated.
echo %Version%
echo Debugging.
TIMEOUT /T 3 /NOBREAK >nul
cls
title DUCKSIDE LAUNCHER(UNVERIFIED)
echo "____   ____           .__  _____       .__                ";
echo "\   \ /   /___________|__|/ ____\__.__.|__| ____    ____  ";
echo " \   Y   // __ \_  __ \  \   __<   |  ||  |/    \  / ___\ ";
echo "  \     /\  ___/|  | \/  ||  |  \___  ||  |   |  \/ /_/  >";
echo "   \___/  \___  >__|  |__||__|  / ____||__|___|  /\___  / ";
echo "              \/                \/             \//_____/  ";
echo =================================
echo Check for administrative privileges
echo =================================
Timeout /t 3 >nul
cls
net session >nul 2>&1
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo "    ______                    ";
    echo "   / ____/_____________  _____";
    echo "  / __/ / ___/ ___/ __ \/ ___/";
    echo " / /___/ /  / /  / /_/ / /    ";
    echo "/_____/_/  /_/   \____/_/     ";
    echo "                              ";
    echo =================================
    echo Run as administrator.
    echo =================================
    pause
    exit /b
)
echo Launching.
Timeout /t 1 >nul
cls
title DUCKSIDE LAUNCHER(VERIFIED)
cls
echo ====================================================
echo "    ____  __  __________ _______ ________  ______";
echo "   / __ \/ / / / ____/ //_/ ___//  _/ __ \/ ____/";
echo "  / / / / / / / /   / ,<  \__ \ / // / / / __/   ";
echo " / /_/ / /_/ / /___/ /| |___/ // // /_/ / /___   ";
echo "/_____/\____/\____/_/ |_/____/___/_____/_____/   ";
echo "                                                 ";
echo ====================================================
Timeout /t 1 >nul
SET /P StartCX=Start CrosshairX?[Y/[N]:
if '%StartCX%'=='n' goto :Skip
if '%StartCX%'=='N' goto :Skip
if '%StartCX%'=='y' goto :CrosshairX
if '%StartCX%'=='Y' goto :CrosshairX
:CrosshairX
echo Launching CrosshairX.
start steam://rungameid/1366800
:Skip
Echo Optimizing.
ipconfig /flushdns >nul
echo Succesfully flushed dns.
taskkill /F /IM "Microsoft.Photos.exe" >nul
taskkill /F /IM "WinStore.App.exe" >nul
taskkill /F /IM "TaskInputHost.exe" >nul
taskkill /F /IM "ShellExperienceHost.exe" >nul
taskkill /F /IM "GameBarPresenceWriter.exe" >nul
taskkill /F /IM "atieclxx.exe" >nul
taskkill /F /IM "RtkNGUI64.exe" >nul
taskkill /F /IM "spoolsv.exe" >nul
echo killed unnecessary tasks.
wmic process where name="chrome.exe" CALL setpriority "16384" >nul
wmic process where name="steam.exe" CALL setpriority "64" >nul
wmic process where name="steamservice.exe" CALL setpriority "64" >nul
wmic process where name="steamwebhelper.exe" CALL setpriority "64" >nul
wmic process where name="GameOverlayUI.exe" CALL setpriority "64" >nul
echo Lowered background app priority.
Timeout /t 1 >nul
echo =====================
echo Optimization Complete
echo =====================
Timeout /t 1 >nul
cls
echo "    ____  __  __________ _______ ________  ______";
echo "   / __ \/ / / / ____/ //_/ ___//  _/ __ \/ ____/";
echo "  / / / / / / / /   / ,<  \__ \ / // / / / __/   ";
echo " / /_/ / /_/ / /___/ /| |___/ // // /_/ / /___   ";
echo "/_____/\____/\____/_/ |_/____/___/_____/_____/   ";
echo "                                                 ";
echo ====================================================
echo =================== Launching. =====================
echo ====================================================
Timeout /t 3 >nul
start steam://rungameid/2682580 > nul
echo Launch completed.
exit






