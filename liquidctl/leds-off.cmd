@echo off

REM NZXT ambient hue 2 kit
set SERIALS=6D86435A545,87913F68495
FOR %%S IN (%SERIALS%) DO liquidctl --serial %%S set sync color off

REM Gigabyte motherboard lighting
set PRODUCT=5702
liquidctl --product %PRODUCT% set sync color off
