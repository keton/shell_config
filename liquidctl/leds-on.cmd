@echo off

set COLOR=00d0ff

REM NZXT ambient hue 2 kit
set DEVNAME=ambient

liquidctl --match %DEVNAME% initialize

REM all LEDs to single color
liquidctl --match %DEVNAME% set sync color fixed %COLOR%

REM Gigabyte motherboard lighting
set DEVNAME=gigabyte
set COLOR=0000ff

liquidctl --match %DEVNAME% initialize

REM only LED1
liquidctl --match %DEVNAME% set led1 color fixed %COLOR%