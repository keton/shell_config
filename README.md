# My shell config

## Global ssh-pageant

1. install [Git for Windows](https://git-scm.com/download/win)
1. copy launchquiet.vbs to user profile directory - `%USERPROFILE%`
1. copy `start-ssh-pageant` shortcut to `%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`
1. set USER env variable `SSH_AUTH_SOCK` to `/tmp/.ssh-pageant-%USERNAME%`
1. reboot

## GnuPG smartcard daemon auto start
1. install [Gpg4Win](https://www.gpg4win.org/), select GPG and Kleopatra
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

## Microsoft Terminal

1. Install from [MS Store](https://www.microsoft.com/en-us/p/windows-terminal-preview/9n0dx20hk701?SilentAuth=1&wa=wsignin1.0&activetab=pivot:overviewtab)
1. copy `ms_terminal\profiles.json` to `%localappdata%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\`. Alternatively select 'Settings' from app menu to open correct `profiles.json` location

## NZXT Hue Ambient kit control
1. Install https://github.com/jonasmalacofilho/liquidctl/releases 1.3.3 or later. 
1. Add liquidctl installation directory to system PATH
1. copy `leds-on.cmd` and `leds-off.cmd` to user profile directory - `%USERPROFILE%`
1. in group policy editor go `User configuration` --> `Windows system settings` --> `Scripts`. Add `leds-on.cmd` to login scripts and `leds-off.cmd` to logout scripts
