@echo off
mode 1000
title Network Diag
color 0A
:options
cls 
   
echo.
echo.        
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MM           MMMM. /MMMMm  yMMMN  yMMMMMMMMMMMMMMMMMMMMMMMMMM           MMMMMMh`      \MMMM           MMMMM
echo MMh+yM   Ms+dMMMM. /MMMMd  yMMMN  yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM   MMMMMMMMMy` /NMMMMMMMMMMMMM   MMMMMMMMM
echo MMMMMM   MMMMMMMMs  yMMN- .NMMMN  yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM   MMMMMMMMy  +MMMMMMMMMMMMMMM   MMMMMMMMM
echo MMMMMM   MMMMMMMMM/ `mM+ `dMMMMN  yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM   MMMMMMMM/ `NMMMMMMMMMMMMMMM   MMMMMMMMM
echo MMMMMM   MMMMMMMMMN- -s  yMMMMMN  yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM   MMMMMMMMd` :NMMMMMMMMMMMMMM   MMMMMMMMM
echo MMMMMM   MMMMMMMMMMm`   oMMMMMMN  sNNNNNNNMMMMMMMMMMMMMMMMMMMMMMM   MMMMMMMMMd. :mNNNNMMMMMMMMM   MMMMMMMMM
echo MMMMMM   MMMMMMMMMMMh` /MMMMMMMN          MMMMMMMMMMMMMMMMMMM           MMMMMMd-       MMMMMMMM   MMMMMMMMM
echo MMMMMMmhmMMMMMMMMMMMMdhNMMMMMMMMhhhhhhhhhdMMMMMMMMMMMMMMMMMMMNhhhhhhhhhmMMMMMMMMdhhhhhNMMMMMMMMmhmMMMMMMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM 
echo.
echo.
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo MM       ``:mMMMMMMMMMMMMMMMMMMMMm  dMMMMMMMMMMMMMMMMMMMMMMMMo .MMMMMMMMMMMMMMMMMMMMMMMMMMM/::::::. `mMMMm` -::::. -MMMMh:::::::` /MMMM+ `:::::  yMMMM
echo MM   MMMNd  oMMMMMMhyyyyydMMMMMMhs  +yyyhMMMMMMMMmhyyyyyhMMMM+ `NdyyyhNMMMMMMMMMMMMMMMMMMMMMMMMMMMy  dMMMd  hMMMM+ `MMMMMMMMMMMM- :MMMM/ -MMMMM  oMMMM
echo MM   ddddo  yMMMMMM+    ``:MMMMN -  -   /MMMMMMd/`      /MMMM+        .mMMMMMMMMMMMMMMMMMMMMmmmmmms  dMMMd  dMMMMo `MMMMMNmmmmmm- :MMMM/ -MMMMM  oMMMM
echo MM   ---.  -NMMMMMdyyyys:  NMMMMMd  hMMMMMMMMMd` /dNMMMMMMMMM+  +hNMm  yMMMMMMMMMMMMMMMMMMM:`......`:NMMMd  dMMMMo `MMMMd.`.....`.sMMMM/ -MMMMM  oMMMM
echo MM   NNNNh  sMMMM+``    .  mMMMMMd  hMMMMMMMMMh  dMMMMMMMMMMM+  MMMMM  sMMMMMMMMMMMMMMMMMMM  oNNNNNNNMMMMd  dMMMMo `MMMMs  mNNNNNNMMMMM/ -MMMMM  oMMMM
echo MM   MMMMh  sMMMM` /MMMd/  dMMMMMd  yMMh/+MMMMm` :yMMMMMMMMMM+  MMMMM  oMMMMMMMMMMMMMMMMMMM  oMMMMMMMMMMMd  dMMMMo `MMMMs  NMMMMMMMMMMM/ -MMMMM  oMMMM
echo MM        `/NMMMMo      `  hMMMMMN: `  ` /MMMMMmo.      -MMMM+  MMMMM  +MMMMMMMMMMMMMMMMMMM  `.......NMMMm` `....` -MMMMs  .......+MMMM+  .....  yMMMM
echo MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
echo.
echo.
echo **********************************************
echo ! Please Run as Administrator to take effect !
echo **********************************************
echo MENU OPTIONS:
echo **********************************************
echo   [a]  ipconfig
echo   [b]  release
echo   [c]  renew
echo   [d]  flushdns
echo   [e]  quick ping google dns
echo   [f]  ping google dns
echo   [g]  ping RBSCHO
echo   [h]  ping to file 8.8.8.8
echo   [i]  export ip settings to D:
echo   [j]  ping to file 200.100.50.1
echo   [k]  static IP
echo   [l]  DHCP

REM echo   [z]  change ip
echo **********************************************
echo   [q]  to quit
echo **********************************************


set /p input="Enter Options Here: "

if "%input%"=="a" goto:ipconfig
if "%input%"=="b" goto:release
if "%input%"=="c" goto:renew
if "%input%"=="d" goto:flushdns
if "%input%"=="e" goto:ping
if "%input%"=="f" goto:ping1
if "%input%"=="g" goto:ping2
if "%input%"=="h" goto:ping3
if "%input%"=="i" goto:dump
if "%input%"=="j" goto:ping4
if "%input%"=="k" goto:changeip
if "%input%"=="l" goto:dhcp

if "%input%"=="q" goto:exit

echo Please select from the list above.
pause
goto:options

:ipconfig
netsh interface ip show config
pause
goto:options

:release
ipconfig.exe /release
pause
goto:options

:renew
ipconfig.exe /renew
pause
goto:options


:flushdns
ipconfig.exe /flushdns
pause
goto:options


:ping
ping 8.8.8.8 -l 1 
pause
goto:options


:ping1
ping 8.8.8.8 -l 1 -t -n 10
pause
goto:options



:ping2
ping rbscho.ddns.net -l 1 -t -n 10
pause
goto:options


:ping3
cls
echo Please wait while we are pinging. This may take several minutes. Hit CTRL + C to exit
echo ************************************************************ > pingtest.txt
echo ping test 8.8.8.8 >> pingtest.txt
echo ************************************************************ >> pingtest.txt
ping -t 8.8.8.8 |cmd /q /v /c "(pause&pause)>nul & for /l %%a in () do (set /p "data=" && echo(!date! !time! !data!)&ping -n 2 8.8.8.8 >nul" >> pingtest.txt
echo. >> pingtest.txt
goto:options

:ping4
cls
echo Pleas wait while we are pinging. This may take several minutes. Hit CTRL + C to exit
echo ************************************************************ > pingtest.txt
echo ping test 200.100.50.1 >> pingtest.txt
echo ************************************************************ >> pingtest.txt
ping -t 200.100.50.1 |cmd /q /v /c "(pause&pause)>nul & for /l %%a in () do (set /p "data=" && echo(!date! !time! !data!)&ping -n 2 200.100.50.1 >nul" >> pingtest.txt
echo. >> pingtest.txt
goto:options

:dump
netsh -c interface dump > ipsettings.txt
goto:options


:changeip
netsh interface ip show config | find "interface"
set /p interface="Interface name:"
set /p ip="Set Static IP:"
set /p sm="Set Subnet Mask:"
set /p gw="Set Gateway:"
set /p d1="Set DNS 1:"
set /p d2="Set DNS 2:"
pause

netsh interface ip set address "%interface%" static %ip% %sm% %gw%
netsh interface ipv4 set dns "%interface%" static "%d1%"
netsh interface ipv4 add dns "%interface%" "%d2%" index=2
goto:options

:dhcp
@echo off
echo Enabling DHCP
netsh interface ip show config | find "interface"
set /p interface="Interface name:"
pause
netsh interface ip set address "%interface%" source=dhcp
netsh interface ip set dnsservers "%interface%" source=dhcp
netsh interface ip show config "%interface%"
pause
goto:options



:exit
exit