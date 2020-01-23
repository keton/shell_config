#!/bin/bash

# git prompt configuration

export GIT_PS1_SHOWDIRTYSTATE=1           # '*'=unstaged, '+'=staged
export GIT_PS1_SHOWSTASHSTATE=1           # '$'=stashed
export GIT_PS1_SHOWUNTRACKEDFILES=1       # '%'=untracked
export GIT_PS1_SHOWUPSTREAM="verbose"     # 'u='=no difference, 'u+1'=ahead by 1 commit
export GIT_PS1_STATESEPARATOR=''          # No space between branch and index status
export GIT_PS1_DESCRIBE_STYLE="describe"  # detached HEAD style:
export GIT_PS1_SHOWCOLORHINTS=1			  # use colors

export PROMPT_COMMAND='__git_ps1 "\[\033]0;Bash:$PWD\007\]\n\[\033[33m\]$PWD\[\033[00m\]" "\[\033[0m\]\n$ "'
export PATH='/c/Program Files (x86)/GnuPG/bin':$PATH

#fancy ls colors
eval `dircolors -b ~/solarized.dircolors`

# Save timestamp in the history file
HISTTIMEFORMAT="%F %T "
# Don't store duplicates
HISTCONTROL=ignoredups
# Allow "sharing" of history between instances
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
