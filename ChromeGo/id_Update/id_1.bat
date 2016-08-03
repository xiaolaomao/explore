@Echo Off
Title 从GitHub云端更新 Agent 最新流量appid
cd /d %~dp0
set BackDir=..\..
wget --ca-certificate=ca-bundle.crt -c https://raw.githubusercontent.com/kgfw/fg/master/jw/proxy.ini
del "..\Agent\proxy.ini_backup"
ren "..\Agent\proxy.ini"  proxy.ini_backup
copy /y "%~dp0proxy.ini" ..\Agent\proxy.ini
del "%~dp0proxy.ini"
ECHO.&ECHO.已更新,请按任意键退出后,并请退出GoAgent和浏览器后再重启. &PAUSE >NUL 2>NUL