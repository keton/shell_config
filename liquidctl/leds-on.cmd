@echo off

set COLOR=00d0ff
set DEVNAME=ambient
set DRIVER=hid

liquidctl --hid %DRIVER% initialize all
liquidctl --hid %DRIVER% --match %DEVNAME% set led1 color fixed %COLOR%
liquidctl --hid %DRIVER% --match %DEVNAME% set led2 color fixed %COLOR%
