@echo off
color 2
REM Updates file via github.
if /i not "%~1"=="updated" (
    echo Updating %~nx0 ...
    >nul 2>&1 powershell iwr "https://raw.githubusercontent.com/anonPwn/Batch/refs/heads/main/RECON.bat" -OutFile "%temp%\%~nx0"
    >nul 2>&1 move /y "%temp%\%~nx0" "%~dpnx0"
    >nul 2>&1 powershell start "%~0" updated & exit /b
)
cd /d "%~dp0"
TIMEOUT /T 1 /NOBREAK >nul
goto Requirements
exit /b
:Requirements
echo Checking Connection.
ping -n 2 -w 700 www.google.com | find "bytes=" >nul
IF %ERRORLEVEL% EQU 0 (
    echo Connection Found.
    goto Start
) ELSE (
    echo No Connection, Relaunch with connection.
    ipconfig /flushdns >nul
    TIMEOUT /T 1 /NOBREAK >nul
    exit /b
)
exit /b
:Start
cls
color 5
title RECON
echo =========================================
echo "__________                            ";
echo "\______   \ ____   ____  ____   ____  ";
echo " |       _// __ \_/ ___\/  _ \ /    \ ";
echo " |    |   \  ___/\  \__(  <_> )   |  \";
echo " |____|_  /\___  >\___  >____/|___|  /";
echo "        \/     \/     \/           \/ ";
echo =========================================
echo Welcome to Recon.
echo Recon is a opensource cybersecurity challenge
echo RULES: No viewing contents in notepad or txt editor.
echo TASK: Escape
REM this is a hint, use the type command and use the goto command to goto :Pwned
:cmd
set /p "cmd=RECON:"
echo %cmd%
goto cmd
exit /b
:Pwned
cls
Echo Booting.
cls
Echo Booting.
cls
Echo Booting...
cls
Echo Login
SET /P user=user:
if '%user%'=='Admin' (
    goto pass
) else (
    goto invalid
)
exit /b
:pass
SET /P pass=pass:
if '%pass%'=='Cookies' (
    goto LoginAuth
) else (
    goto invalid
)
exit /b
:print
type s.txt
pause





