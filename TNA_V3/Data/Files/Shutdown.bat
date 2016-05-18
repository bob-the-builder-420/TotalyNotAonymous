
cd "%appdata%\HTG Locker"
set /p Password=<hide.txt


:HOME
cd %appdata%
%cho%==0
cls
echo       ___           ___           ___              
echo      /\  \         /\__\         /\  \             
echo      \:\  \       /::^|  ^|       /::\  \            
echo       \:\  \     /:^|:^|  ^|      /:/\:\  \           
echo       /::\  \   /:/^|:^|  ^|__   /::\~\:\  \          
echo      /:/\:\__\ /:/ ^|:^| /\__\ /:/\:\ \:\__\         
echo     /:/  \/__/ \/__^|:^|/:/  / \/__\:\/:/  /         
echo    /:/  /          ^|:/:/  /       \::/  /          
echo    \/__/           ^|::/  /        /:/  /           
echo                    /:/  /        /:/  /            
echo                    \/__/         \/__/   
echo ================================================
echo 1)Files
echo 2)Close
echo 3)Change Password
echo 4)Check for Updates
echo.
set/p "cho=You:"
if %cho%==1 goto CONFIRM
if %cho%==2 goto End
if %cho%==3 goto PASS
if %cho%==4 goto Update
echo "Invalid Option"
puase>null
goto Home

:CONFIRM
cd %appdata%
title Unlocking...
if NOT EXIST "HTG Locker" goto MDLOCKER
if NOT EXIST "Z:\" goto UNLOCK

echo Bot:Press "y" then enter to lock the file.
echo Bot:Press "n" then enter to cancel
set/p "cho=You:"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto Home
if %cho%==N goto Home
echo Bot:Invalid choice.
pause
goto CONFIRM

:MDLOCKER
cd %appdata%
mkdir "HTG Locker"
attrib +h +s "HTG Locker"
cd "%appdata%\HTG Locker"
@echo "1" > qwerty.txt
attrib +h +s qwerty.txt
echo "First time setup..."
echo "To open folder, use password "qwerty"
pause
goto Home

:LOCK
subst Z: /D
echo Bot:Folder locked
pause
goto Home

:UNLOCK
cd "%appdata%\HTG Locker"

cls
echo       ___           ___           ___              
echo      /\  \         /\__\         /\  \             
echo      \:\  \       /::^|  ^|       /::\  \            
echo       \:\  \     /:^|:^|  ^|      /:/\:\  \           
echo       /::\  \   /:/^|:^|  ^|__   /::\~\:\  \          
echo      /:/\:\__\ /:/ ^|:^| /\__\ /:/\:\ \:\__\         
echo     /:/  \/__/ \/__^|:^|/:/  / \/__\:\/:/  /         
echo    /:/  /          ^|:/:/  /       \::/  /          
echo    \/__/           ^|::/  /        /:/  /           
echo                    /:/  /        /:/  /            
echo                    \/__/         \/__/   
echo ================================================
echo 1)Files
echo 2)Close
echo 3)Change Password
echo.
echo Bot: Enter Password...
set /p password=PASSWORD: 
If NOT exist %password%.txt GoTo FAIL
cd ..
subst Z: ".\HTG Locker"
echo Bot:Folder Unlocked successfully
pause
goto Home

:PASS
cls
echo The password can be changed in a file inside of the locker, good luck finding it.
pause>null
goto Home

:UPDATE
start "" http://bit.ly/1Sy1vn7
goto home

:FAIL
echo Bot:Invalid password
echo.
pause
goto UNLOCK

:FAIL2
echo Bot:Invalid password
echo.
pause
goto PASS

:End
