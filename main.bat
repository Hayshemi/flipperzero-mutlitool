@echo off
setlocal enableextensions enabledelayedexpansion
>nul chcp 65001
title Flipper Zero Mutlitool - by Hayshemi
goto start

:start
cls
call :banner
pause

:banner
echo.
echo           [38;5;202m███████╗██╗     ██╗██████╗ ██████╗ ███████╗██████╗[0m     [37m███╗   ███╗██╗   ██╗████████╗██╗     ██╗[0m
echo           [38;5;202m██╔════╝██║     ██║██╔══██╗██╔══██╗██╔════╝██╔══██╗[0m    [37m████╗ ████║██║   ██║╚══██╔══╝██║     ██║[0m
echo           [38;5;202m█████╗  ██║     ██║██████╔╝██████╔╝█████╗  ██████╔╝[0m    [37m██╔████╔██║██║   ██║   ██║   ██║     ██║[0m
echo           [38;5;202m██╔══╝  ██║     ██║██╔═══╝ ██╔═══╝ ██╔══╝  ██╔══██╗[0m    [37m██║╚██╔╝██║██║   ██║   ██║   ██║     ██║[0m
echo           [38;5;202m██║     ███████╗██║██║     ██║     ███████╗██║  ██║[0m    [37m██║ ╚═╝ ██║╚██████╔╝   ██║   ███████╗██║[0m
echo           [38;5;202m╚═╝     ╚══════╝╚═╝╚═╝     ╚═╝     ╚══════╝╚═╝  ╚═╝[0m    [37m╚═╝     ╚═╝ ╚═════╝    ╚═╝   ╚══════╝╚═╝[0m
echo.   

:menu
echo.
echo ==== [38;5;202mFirmware[0m ====                         ==== [38;5;202mSettings[0m ====
echo.
echo [1]   Install Official Firmware            [8]   Select File Destination (If Auto-Detect Doesn't Work)  
echo [2]   Install Momentum Firmware            [9]   Wipe SD
echo [3]   Install Unleashed Firmware           [10]  Troubleshoot  
echo [4]   Install Xtreme Firmware              [11]  Documentation
echo.
echo ==== [38;5;202mApps[0m ====                             ==== [38;5;202mMisc[0m ====
echo.
echo [5]   Install BadKB Scripts                [00] Exit
echo [6]   Bluetooth Fix                        [99] Github
echo [7]   Remove Region Lock  
echo.
set /p input= [38;5;202mEnter Option:  [0m
  
if "%input%"=="00" exit
if "%input%"=="1" cls & goto firmware_official
if "%input%"=="2" cls & goto firmware_momentum
if "%input%"=="3" cls & goto firmware_unleashed
if "%input%"=="4" cls & goto firmware_xtreme
if "%input%"=="5" cls & goto install_badkb
if "%input%"=="6" cls & goto bluetooth_fix
if "%input%"=="7" cls & goto region_unlock
if "%input%"=="8" cls & goto file_select
if "%input%"=="9" cls & goto wipe_sd
if "%input%"=="10" cls & goto troubleshoot
if "%input%"=="11" cls & goto documentation 
if "%input%"=="99" start "" "https://github.com/hayshemi"
cls & goto start

:firmware_official
echo.
echo    [38;5;202mFirmware Quick Installing Will Be Added Soon[0m
echo.
pause
cls & goto start

:firmware_momentum
echo.
echo    [38;5;202mFirmware Quick Installing Will Be Added Soon[0m
echo.
pause
cls & goto start

:firmware_unleashed
echo.
echo    [38;5;202mFirmware Quick Installing Will Be Added Soon[0m
echo.
pause
cls & goto start

:firmware_xtreme
echo.
echo    [38;5;202mFirmware Quick Installing Will Be Added Soon[0m
echo.
pause
cls & goto start

:install_badkb

echo.
echo [38;5;202mBadKB Scripts Installer[0m

set /p file_location=[38;5;202mEnter directory: [0m
if not exist "%file_location%" mkdir "%file_location%"
cd /d "%file_location%"

:badkb_menu
echo.
echo [38;5;202mBadKB Scripts Installer[0m
echo.

echo [38;5;202m[1] [97m Kushed3d          [38;5;202m(Pranks and BadUSB)
echo [38;5;202m[2] [97m I-Am-Jakoby       [38;5;202m(Plug-and-Play Payloads)
echo [38;5;202m[3] [97m UberGuidoZ        [38;5;202m(Utility and Prank Scripts)
echo [38;5;202m[4] [97m beigeworm         [38;5;202m(Extensive Script Collection)
echo [38;5;202m[5] [97m FalsePhilosopher  [38;5;202m(Community Script Library)
echo [38;5;202m[6] [97m Zarcolio          [38;5;202m(Personal Ducky Scripts)
echo [38;5;202m[7] [97m Zenin0            [38;5;202m(BadUSB and Additional Resources)
echo [38;5;202m[8] [97m narstybits        [38;5;202m(macOS-Specific Scripts)
echo [38;5;202m[9] [97m AbeNaws           [38;5;202m(Personal BadUSB Scripts)
echo [38;5;202m[10][97m CharlesTheGreat77 [38;5;202m(General Payload Collection)
echo [38;5;202m[11][97m ArthurBogiano     [38;5;202m(ASCII Art Scripts)
echo [38;5;202m[12][97m nocomp            [38;5;202m(Hak5 Payloads Adapted for Flipper Zero)
echo.
echo [38;5;202m[00][97m Return to Main Menu
echo.

set /p choice=[38;5;202mEnter Option: [0m

if "%choice%"=="00" goto start
if "%choice%"=="1" (set script_name=Kushed3d.zip & set script_url=https://github.com/kushed3d/Bad-USB-Flipper-Zero/archive/refs/heads/main.zip & goto install_badkb_script)
if "%choice%"=="2" (set script_name=I-Am-Jakoby.zip & set script_url=https://github.com/I-Am-Jakoby/Flipper-Zero-BadUSB/archive/refs/heads/main.zip & goto install_badkb_script)
if "%choice%"=="3" (set script_name=UberGuidoZ.zip & set script_url=https://github.com/UberGuidoZ/Flipper_Zero-BadUsb/archive/refs/heads/main.zip & goto install_badkb_script)
if "%choice%"=="4" (set script_name=beigeworm.zip & set script_url=https://github.com/beigeworm/BadUSB-Files-For-FlipperZero/archive/refs/heads/main.zip & goto install_badkb_script)
if "%choice%"=="5" (set script_name=FalsePhilosopher.zip & set script_url=https://github.com/FalsePhilosopher/badusb/archive/refs/heads/main.zip & goto install_badkb_script)
if "%choice%"=="6" (set script_name=Zarcolio.zip & set script_url=https://github.com/Zarcolio/flipperzero/archive/refs/heads/main.zip & goto install_badkb_script)
if "%choice%"=="7" (set script_name=Zenin0.zip & set script_url=https://github.com/Zenin0/Glipper_Scripts/archive/refs/heads/main.zip & goto install_badkb_script)
if "%choice%"=="8" (set script_name=narstybits.zip & set script_url=https://github.com/narstybits/MacOS-DuckyScripts/archive/refs/heads/main.zip & goto install_badkb_script)
if "%choice%"=="9" (set script_name=AbeNaws.zip & set script_url=https://github.com/AbeNaws/Flipper-Zero-BadUsb-Scripts/archive/refs/heads/main.zip & goto install_badkb_script)
if "%choice%"=="10" (set script_name=CharlesTheGreat77.zip & set script_url=https://github.com/CharlesTheGreat77/BADUSB/archive/refs/heads/main.zip & goto install_badkb_script)
if "%choice%"=="11" (set script_name=ArthurBogiano.zip & set script_url=https://github.com/ArthurBogiano/Flipper_Zero-BadUsb_UNC0V3R3D/archive/refs/heads/main.zip & goto install_badkb_script)
if "%choice%"=="12" (set script_name=nocomp.zip & set script_url=https://github.com/nocomp/Flipper_Zero_Badusb_hack5_payloads/archive/refs/heads/main.zip & goto install_badkb_script)
goto badkb_menu

:install_badkb_script
echo.
echo Installing %script_name%...
curl -L "%script_url%" -o "%file_location%\%script_name%"
if exist "%file_location%\%script_name%" (
    echo [92m%script_name% installed successfully![0m
	echo (You still may have to configure certain scripts)
) else (
    echo [91mFailed to install %script_name%.[0m
)
pause
goto start

:file_select
echo.
echo    [38;5;202mSelect File Destination[0m
echo    (eg Z:/FlipperZero/Apps/Bluetooth)
echo.
set /p file_location= [38;5;202mEnter File Location:  [0m
cd %file_location%
dir/s
echo.
echo Is this the correct file location?
set /p input= [38;5;202mY/N:  [0m
if "%input%"=="N" cd C:/
cls & goto start

:wipe_sd
echo.
echo    [38;5;202mWipe SD Card[0m
echo    (eg E:/)
echo.
set /p file_location= [38;5;202mEnter File Location:  [0m
cd %file_location%
dir/s
echo.
echo Is this the correct file location?
echo [38;5;202mWARNING THIS WILL DELETE ALL FILES! MAKE SURE THIS IS THE RIGHT FILE LOCATION![0m
set /p input= [38;5;202mY/N:  [0m
if "%input%"=="N" cd C:/
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q || del "%%i" /s/q)
cd C:/
cls
echo [38;5;202mSuccessfully Wiped SD Card[0m
echo.
pause
cls & goto start

:troubleshoot
echo.
echo    [38;5;202mTroubleshooting Menu[0m
echo.
echo Search For Problems?
set /p input= [38;5;202mY/N:  [0m
if "%input%"=="N" cls & goto start
cls
echo.
echo    [38;5;202mTroubleshooting Menu[0m
echo.
echo Searching for problems...
echo.
set first=%file_location:~0,1%
if /i "%first%" geq "A" if /i "%first%" leq "Z" (
    echo File Location Format Correct
) else (
    echo File Location Format Is Not Correct Changing directory to C:\
    cd C:\
)
echo.
echo No Other Problems Found
pause
cls & goto start
