# My shell config

## Global ssh-pageant

1. install [Git for Windows](https://git-scm.com/download/win)
1. copy launchquiet.vbs to user profile directory - %USERPROFILE%
1. copy start-ssh-pageant to %USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
1. set USER env variable SSH_AUTH_SOCK to /tmp/.ssh-pageant-%USERNAME%
1. reboot

## Git for windows setup

Copy `git_bash` folder contents to user profile directory - %USERPROFILE%

## Cygwin setup

Copy `cygwin` folder contents to cygwin home directory - C:\cygwin64\home\\%USERNAME%

## Conemu / Cmder setup

1. Extract [cmder mini](https://github.com/cmderdev/cmder/releases) package to c:\cmder
1. Import conemu-settings.xml in cmder settings panel

