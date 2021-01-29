@echo off

REM NZXT ambient hue 2 kit
set COLOR=00d0ff
set SERIALS=6D86435A545,87913F68495

REM all LEDs to single color
FOR %%S IN (%SERIALS%) DO (

REM do we need to initialize?
REM liquidctl --serial %%S initialize

liquidctl --serial %%S set sync color fixed %COLOR%

)

REM Gigabyte motherboard lighting
set COLOR=0000ff
set PRODUCT=5702

liquidctl --product %PRODUCT% initialize

REM only LED1
liquidctl --product %PRODUCT% set led1 color fixed %COLOR%
