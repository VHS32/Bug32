set objShell = createobject("Shell.Application")
dim buhu
 buhu="C:\bug32\jaq.vbs" 

 ObjShell.ShellExecute "wscript.exe", """" & buhu & """ RunAsAdministrator", , "runas", 1  
