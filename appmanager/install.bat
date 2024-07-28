@echo off
title AppManager v0.1
color 17
mkdir %localappdata\sodiumstudios
cd %localappdata\sodiumstudios
type nul > batch.txt
echo Welcome to the Installer for AppManager Software
echo Provided to you by Sodium Studios
echo #######OFFICAL WEBSITE########--https://gitlab.com/sodiumstudios/
PAUSE
color 3b
cls
:start
echo.
echo 1. Install from GL Server
echo 2. Install from GH Server
echo 3. Install from DB Server
echo 4. Install from r_soft cloud Server
set choice=
set /p choice=Type the number to execute the operation
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto gl
if '%choice%'=='2' goto gh
if '%choice%'=='3' goto db
if '%choice%'=='4' goto r_soft
ECHO "%choice%" is not valid please retry
ECHO.
goto start
:gl
echo Using GL Server
goto end
:gh
echo Using GH Server
goto end
:db
echo Using DB Server
:r_soft
echo Using r_soft Server
goto end
:end
PAUSE