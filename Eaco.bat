@echo off
goto reset

:reset
cls
@echo off
title EACO Enviroment
set emumount1=NA
set emumount2=NA
set emumount3=NA
set emumount4=NA
set emumount5=NA
echo EACO v1.1.0 For Batch interpreters
echo Created by MESYETI
echo Type eaco(help) for a list of commands

:recieve-command
set mycommand="__"
set /p mycommand="EACO> "
goto processcommand

:processcommand
if %mycommand%==eaco(loc)        (echo %cd%)
if %mycommand%==display(var)     (goto varco)
if %mycommand%==eaco(ver)        (echo Eaco v1.1.0)
if %mycommand%==eaco(exit)       (exit)
if %mycommand%==eaco(help)       (goto helptype)
if %mycommand%==file(direct)     (goto filedir)
if %mycommand%==file(delete)     (goto filedel)
if %mycommand%==direct(make)     (goto dirmake)
if %mycommand%==eaco(reset)      (goto loader)
if %mycommand%==process(new)     (goto newproc)
if %mycommand%==process(kill)    (goto killproc)
if %mycommand%==process(list)    (tasklist)
if %mycommand%==video(colour)    (goto ccol)
if %mycommand%==sleep(save)      (goto scrnsaver)
if %mycommand%==app(start)       (goto openapp)
if %mycommand%==intapp(cmdemu)   (goto cmdemu)
if %mycommand%==immersive(on)    (goto imm1)
if %mycommand%==immersive(off)   (goto imm0)
if %mycommand%==direct(cd)       (goto cdmo)
if %mycommand%==eaco(credits)    (goto credits)
if %mycommand%==eaco(updinf)     (goto uinf)
if %mycommand%==direct(emu1)     (goto diremupoint1)
if %mycommand%==direct(emu2)     (goto diremupoint2)
if %mycommand%==direct(emu3)     (goto diremupoint3)
if %mycommand%==direct(emu4)     (goto diremupoint4)
if %mycommand%==direct(emu5)     (goto diremupoint5)
if %mycommand%==tree(emu1)       (goto treepoint1)
if %mycommand%==tree(emu2)       (goto treepoint2)
if %mycommand%==tree(emu3)       (goto treepoint3)
if %mycommand%==tree(emu4)       (goto treepoint4)
if %mycommand%==tree(emu5)       (goto treepoint5)
if %mycommand%==internet(ping)   (goto interping)


goto recieve-command


:varco
set /p varco-input="Type the variable you want to see> "
echo %%varco-input%%
goto recieve-command


:filedir
set /p filedirpath="File Path> "
dir %filedirpath%
goto recieve-command

:filedel
set /p filedelpath="File Path> "
set /p ays1="Are you sure? (Y/N) "
if %aysl%==Y (del (filedelpath)
goto recieve-command

:dirmake
set /p dirmakepath="Type the new directory name> "
md %dirmakepath%
echo Directory created
goto recieve-command

:newproc
set /p newprocnam="New process name> "
start %newprocnam%
goto recieve-command

:killproc
set /p killprocname="Kill process> "
taskkill /f /im %killprocname%
goto recieve-command

:ccol
type %cd%\RESOURCES\colours.txt
set /p %scrncolour%="Type a colour ID to set the screen to> "
if %scrncolour%==7p (color 07)
if %scrncolour%==9g (color 17)
if %scrncolour%==8s (color 27)
pause
goto recieve-command

goto recieve-command

:scrnsaver
echo E
timeout 1 >nul
echo EA
timeout 1 >nul
echo EAC
timeout 1 >nul
echo EACO
timeout 1 >nul
echo EAC
timeout 1 >nul
echo EA
timeout 1 >nul
goto scrnsaver

:webopen
echo Command is disabled
pause
goto recieve-command

:openapp
set /p apptoopen="Type the app directory> "
call %apptoopen%
echo App not found!
pause
goto recieve-command

:cmdemu
echo Are you sure you want to exit EACO to go to the CMD Emulator?
set /p cmdemuyn="(Y/N) "
if %cmdemuyn%==Y (goto cmdemuprep)
goto recieve-command

:cmdemuec
set /p cmdemuecc="%cd%> "
%cmdemuecc%
goto cmdemuec

:imm1
taskkill /f /im explorer.exe >nul
echo Immersive mode has been entered!
pause
goto recieve-command

:imm0
start explorer.exe >nul
echo Immersive mode exited
pause
goto recieve-command

:loader
::Removed for interpreters

:filerror
cls
echo EACO Error!
echo Reason: The EACO directory is compressed, or started in an already existing process
pause
exit

:cdmo
echo Mounting emulation point 1: %emumount1%
echo Mounting emulation point 2: %emumount2%
echo Mounting emulation point 3: %emumount3%
echo Mounting emulation point 4: %emumount4%
echo Mounting emulation point 5: %emumount5%
echo Total: 5 emulation points
set /p emupointse="Type the emulation point number you want to use> "
if emupointse==1 (goto cdmo1)
if emupointse==2 (goto cdmo2)
if emupointse==3 (goto cdmo3)
if emupointse==4 (goto cdmo4)
if emupointse==5 (goto cdmo5)

:cdmo1
set /p emumount1="Type the directory you want to mount> "
echo Directory mounted
goto recieve-command
:cdmo2
set /p emumount2="Type the directory you want to mount> "
echo Directory mounted
goto recieve-command
:cdmo3
set /p emumount3="Type the directory you want to mount> "
echo Directory mounted
goto recieve-command
:cdmo4
set /p emumount4="Type the directory you want to mount> "
echo Directory mounted
goto recieve-command
:cdmo5
set /p emumount5="Type the directory you want to mount> "
echo Directory mounted
goto recieve-command


:credits
cls
timeout 1 >nul
echo EACO Command Line
timeout 1 >nul
echo Created by:
timeout 1 >nul
echo MESYETI
timeout 1 >nul
echo Contributors:
timeout 1 >nul
echo haydenledean - internet(ping) command. Added for version 1.1.0
timeout 5 >nul
goto recieve-command

:uinf
type %cd%\RESOURCES\uinf.txt
goto recieve-command

:cmdemuprep
cls
echo EACO Command Prompt emulation
goto cmdemuec

:diremupoint1
dir %emumount1%
goto recieve-command
:diremupoint2
dir %emumount2%
goto recieve-command
:diremupoint3
dir %emumount3%
goto recieve-command
:diremupoint4
dir %emumount4%
goto recieve-command
:diremupoint5
dir %emumount5%
goto recieve-command

:treeemupoint1
tree %emumount1%
goto recieve-command
:treeemupoint2
tree %emumount2%
goto recieve-command
:treeemupoint3
tree %emumount3%
goto recieve-command
:treeemupoint4
tree %emumount4%
goto recieve-command
:treeemupoint5
tree %emumount5%
goto recieve-command

:interping
set /p ping-url="Type the http address> "
ping %ping-url%
goto recieve-command

:helptype
echo LIST OF COMMANDS-
echo eaco(loc)            - Show the location of which Eaco is running
echo display(var)         - Show a variable's value
echo display(file)        - Show the contents of a file
echo eaco(ver)            - Display the version of Eaco you are using
echo eaco(exit)           - Exit the Eaco enviroment
echo eaco(help)           - Displays a list of commands
echo file(direct)         - Shows you the directory of a folder
echo file(delete)         - Deletes a file
echo direct(make)         - Makes a directory
echo eaco(reset)          - Resets the eaco enviroment
echo process(new)         - Creates a new system process
echo process(kill)        - Kills a system process
echo internet(open)       - Opens a webpage in your default web browser
echo app(start)           - Starts an app/game written in Batch
echo intapp(cmdemu)       - Starts the Windows CMD Emulator for more uses of EACO
echo immersive(on)        - Turns on immersive mode
echo immersive(off)       - Turns off immersive mode
echo direct(cd)           - Mounts a directory to one of the emulated mounting points
echo eaco(updinf)         - Shows all update info, and who created and contributed it
echo direct(emu%)         - Shows the directory of an emulation point. Replace % with the point ID
echo tree(emu%)           - Shows a "tree" of a mounted directory. Replace % with the point ID
goto recieve-command