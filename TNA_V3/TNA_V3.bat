@echo off
color 0a
title TNA
goto home

:DEFFD
cd %~dp0
cls

:HOME
cls
type Data\ascii.dat
echo.
echo.
echo 1)Files
echo 2)Web Cite
echo 3)IP Hacker
echo 4)Check for Updates
echo 5)Close
echo.
set/p "cho=You:"
if %cho%==1 goto Files
if %cho%==2 goto Cite
if %cho%==3 goto IP
if %cho%==4 goto Update
if %cho%==5 goto End
if %cho%==6 goto Wow
goto home

:UPDATE
start https://github.com/bob-the-builder-420/TotalyNotAonymous
goto home

:Cite
cls
echo It's gone and we don't
echo know when it will be back
echo.
echo            -The People Who Made This
pause>nul
goto home

:IP
cls
type Data\ascii.dat
echo.
echo.
echo 1)Enter a I.P.
echo 2)Add a I.P.
echo 3)Go Back
echo.
set/p "cho=You:"
if %cho%==1 goto IPLST
if %cho%==2 goto IPEN
if %cho%==3 goto home
goto IP

:IPEN
cls
type Data\ascii.dat
echo.
echo.
set /p IP=Add the I.P.:
echo %IP% >> Data\Log.dat
pause
goto IP

:IPEN2
cls
type Data\ascii.dat
echo.
echo.
echo Do you want to add other options
echo.
echo 1)Yes
echo 2)No
set/p "cho=You:"
if %cho%==1 goto IPEN2.1
if %cho%==2 goto IPEN3
goto IPEN2

:IPEN2.1
cls
type Data\ascii.dat
echo.
echo.
set /p Byt=How many bytes, cant be anyting over 2999:
goto IPEN3.1

:IPEN3
ping %IP2% -l 2999 -n 100
pause

:IPEN3.1
ping %IP2% -l %Byt% -n 100
pause

:IPLST
cls
type Data\ascii.dat
echo.
echo.
echo pick a IP and type it in 
type Data\Log.dat
echo.
set /p IP2=you:
goto IPEN2

:Wow
cls
type Data\ascii.dat
echo.
echo.
echo You found the secret menu, Good Job (pat your self on the back)
pause
goto Home2

:HOME2
cls
type Data\ascii.dat
echo.
echo.
echo 1)Chat Bots
echo 2)Battleship
echo 3)------
echo 4)Go Back
echo.
set/p "cho=You:"
if %cho%==1 goto chatbots
if %cho%==2 start Data\battle_ship.py
if %cho%==4 goto home
goto home2

:chatbots
cls 
type Data\ascii.dat
echo.
echo.
echo 1)Chatbot 27
echo 2)------
echo 3)------
echo 4)Go Back
echo.
set/p "cho=You:"
if %cho%==1 start Data\chatbots\chatbot_V.1.1.py
if %cho%==4 goto home2
goto chatbots

:Files
cls
cd "%appdata%\HTG Locker"
cls
set /p Password=<hide.txt
cls

:home3
cls
cd %~dp0>nul
type Data\ascii.dat
echo.
cd %appdata%>nul
echo.
echo 1)Files
echo 2)Change Password
echo 3)Go Back
echo.
set/p "cho=You:"
if %cho%==1 goto CONFIRM
if %cho%==2 goto PASS
if %cho%==3 goto DEFFD
goto Home3

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
echo.
echo Bot:Folder locked
pause
goto Home3

:UNLOCK
cls
cd %~dp0>nul
type Data\ascii.dat
echo.
cd "%appdata%\HTG Locker"
echo.
echo 1)Files
echo 2)Change Password
echo 3)Check for Updates
echo 4)Go Back
echo.
echo Bot: Enter Password or Press "n" to Cancel
set /p password=PASSWORD: 
if %password%==n goto home3
If NOT exist %password%.txt GoTo FAIL
cd ..
subst Z: ".\HTG Locker"
echo.
echo Bot:Folder Unlocked successfully
pause
goto Home3

:PASS
cls
echo The password can be changed in a file inside of the locker, good luck finding it
pause>null
goto Home3

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
