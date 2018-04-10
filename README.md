# My shell config

## Global ssh-pageant

1. install [Git for Windows](https://git-scm.com/download/win)
1. copy launchquiet.vbs to user profile directory - `%USERPROFILE%`
1. copy `start-ssh-pageant` shortcut to `%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`
1. set USER env variable `SSH_AUTH_SOCK` to `/tmp/.ssh-pageant-%USERNAME%`
1. reboot

## GnuPG smartcard daemon auto start
1. install [GnuPG for Windows](), select GPG and Kleopatra
1. copy contents of `gpg_config` folder to `%USERPROFILE%\AppData\Roaming\gnupg`
1. in command line run `gpg --card-edit`, execute `fetch` command to download card's certificate from keyserver
1. copy `start-gpg-agent.cmd` to user profile directory - `%USERPROFILE%`
1. copy `start-gpg-agent` shortcut to `%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`

## Git for windows setup

Copy `git_bash` folder contents to user profile directory - `%USERPROFILE%`

## Cygwin setup

Copy `cygwin` folder contents to cygwin home directory `C:\cygwin64\home\%USERNAME%`

## Conemu / Cmder setup

1. Extract [cmder mini](https://github.com/cmderdev/cmder/releases) package to `c:\cmder`
1. Import `conemu-settings.xml` in cmder settings panel

