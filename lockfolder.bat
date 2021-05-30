@ECHO OFF
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Private goto MDPrivate
:CONFIRM
echo Do you want to lock your folder?(Y/N)
set/p "x="
if %x%==Y goto LOCK
if %x%==y goto LOCK
if %x%==N goto END
if %x%==n goto END
:LOCK
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked.
goto End
:UNLOCK
echo Enter password to Unlock Your Secure Folder:
set/p "pass="
if NOT %pass%==125800786 goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo Folder Unlocked successfully.
goto End
:FAIL
echo Invalid password.
pause
goto end
:MDPrivate
md Private
echo Private created successfully.
pause
goto End
:End





