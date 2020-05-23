@echo off

set DEVNAME=ambient
set DRIVER=hid

REM liquidctl --hid %DRIVER% initialize all
liquidctl --hid %DRIVER% --match %DEVNAME% set led1 color off
liquidctl --hid %DRIVER% --match %DEVNAME% set led2 color off
