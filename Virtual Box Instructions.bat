@echo off

rem Here "rem" refers to remarks and it is used for giving instructions to new users, beginner and it's helpful while debugging the program. Any remark can be written like "rem remarks". Adding "@echo off" at the beginning will not show remarks while executing.

:start
echo Virtual Box finder
echo.

echo Warning : Don't run this script if VirtualBox.exe is already installed !
echo           Make sure to check it by searching.  

rem --- Change Directory to "C:\Users\{username}" ---
cd %USERPROFILE%\Downloads

rem -- Setting environment variables --
set Virtual_Machine=VirtualBox-6.1.34-150636-Win.exe
set Extension_Pack=Oracle_VM_VirtualBox_Extension_Pack-6.1.34.vbox-extpack
set ISO_name=Fedora-KDE-Live-x86_64-36-1.5.iso

rem --- Testing files and warning the user ---
:file_testing

echo Testing files ...
echo.

if not exist %Virtual_Machine% echo Warning :: The "%Virtual_Machine%" is not found in "Downloads" !
echo.
if not exist %Extension_Pack% echo Warning :: The "%Extension_Pack%" is not found in "Downloads" !
echo. 
if not exist %ISO_name% echo Warning :: The "%ISO_name%" is not found in "Downloads" !

echo.
echo Please copy the files listed above with the same names into "Downloads" folder using file excplorer and run the script again
echo.

pause

if exist %Virtual_Machine% ( goto file_exist ) else goto loop_or_exit

:file_exist
rem --- If file exist ---

echo.
echo INSTRUCTIONS
echo Read the below instructions carefuly :
echo [Warning : Read full instructions by scrolling "up/down or left/right"]
echo [Warning : Refer this script and do the installation togather !]
echo.
echo 1. Please Accept all the license from VirtualBox.
echo 2. Select the locations whrere you want to Download the "VirtualBox" application
echo 3. Choose the appropriate options while installation
echo 4. Allow the installation of drivers which are mentions publisher as "Oracle Cooperation"
echo 5. Kindly wait while installation
echo.
echo.
echo Follow these steps :
echo .
echo 1. At the beginning "Welcome to the Oracle VM ..." Click on "next"
echo 2. For the "custom setup" option it should be selected as "C:\Program Files\Oracle\VirtualBox" [if not type it there] and click "next"
echo 3. Select the below entries in the next step [If already selected leave as it is]
echo        [X] Create start menu entries
echo        [X] Create shortcut on desktop
echo        [X] Create shortcut in Quick Launch Bar
echo        [X] Register file associations
echo 4. For "Warning Network Interfaces" click on "yes"
echo 5. For "Ready to install" click on "install"
echo 6. For the message "Would you like to install this device software" uncheck [] the "Always trust software from 'Oracle Cooperation' " then click on "install"
echo 7. Click on "Finish" in the "setup Wizard"

cd %USERPROFILE%\Downloads
VirtualBox-6.1.34-150636-Win.exe

rem --- User Interaction ---
:loop_or_exit
echo.
choice /C YN /N /M "If not success run again ? [Y/N]"
if ERRORLEVEL 2 exit
if ERRORLEVEL 1 goto start