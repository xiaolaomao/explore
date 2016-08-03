%%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a 
cls
@echo off
start /wait "" "%~dp0Firefly\prestart.exe"
start "" "%~dp0Firefly\firefly.exe"
IF EXIST %~dp0Browser\chrome.exe (
    start %~dp0Browser\chrome.exe --user-data-dir=%~dp0chrome-user-data --proxy-pac-url=%~dp0Firefly\firefly.pac http://www.bannedbook.org/bnews/fq/?utm_source=chfirefly
) ELSE (
    start chrome.exe --user-data-dir=%~dp0chrome-user-data --proxy-pac-url=%~dp0Firefly\firefly.pac http://www.bannedbook.org/bnews/fq/?utm_source=chfirefly
)
