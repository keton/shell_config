@echo off

REM NZXT ambient hue 2 kit
set DEVNAME=ambient
liquidctl --match %DEVNAME% set sync color off

REM Gigabyte motherboard lighting
set DEVNAME=gigabyte
liquidctl --match %DEVNAME% set sync color off
