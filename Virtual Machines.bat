@echo off

rem Here "rem" refers to remarks and it is used for giving instructions to new users, beginner and it's helpful while debugging the program. Any remark can be written like "rem remarks". Adding "@echo off" at the beginning will not show remarks while executing.

rem -- Rename Check --
choice /C YN /N /M Did you renamed files after downloading ? [Y/N]
if ERRORLEVEL 1 goto fix_rename
if ERRORLEVEL 2 goto no_fix_rename

::fix_rename

::no_fix_rename

rem -- Setting environment variables --
set Virtual_Machine=Virtual Box.exe
set Extension_Pack=Oracle_VM_VirtualBox_Extension_Pack-6.1.34.vbox-extpack
set ISO_name=

rem -- User Interaction --

rem --- Change Directory to "C:\Users\{username}" ---
cd %USERPROFILE%\Downloads

rem --- List the contents in "C:\Users\{username}" ---
dir

rem --- Testing files and warning the user ---

echo.

echo Testing files ...

echo.

if not exist %USERPROFILE%\Downloads\%Virtual_Machine%
echo Warning :: The %Virtual_Machine% is not found in "Downloads" !

if not exist %USERPROFILE%\Downloads\%Extension_Pack%
echo Warning :: The %Extension_Pack% is not found in "Downloads" !

if not exist %USERPROFILE%\Downloads\%ISO_name%
echo Warning :: The %ISO_name% is not found in "Downloads" !

echo.

echo Please copy the files into "Download" folder
rem --- User Interaction ---
