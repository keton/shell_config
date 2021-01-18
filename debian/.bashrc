# this is just a snippet that should be added at the end of actual .bashrc

# smart card ssh config
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

# git prompt stuff

export GIT_PS1_SHOWDIRTYSTATE=1           # '*'=unstaged, '+'=staged
export GIT_PS1_SHOWSTASHSTATE=1           # '$'=stashed
export GIT_PS1_SHOWUNTRACKEDFILES=1       # '%'=untracked
export GIT_PS1_SHOWUPSTREAM="verbose"     # 'u='=no difference, 'u+1'=ahead by 1 commit
export GIT_PS1_STATESEPARATOR=''          # No space between branch and index status
export GIT_PS1_DESCRIBE_STYLE="describe"  # detached HEAD style:
export GIT_PS1_SHOWCOLORHINTS=1                   # use colors

export PROMPT_COMMAND='__git_ps1 "\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w" "\[\033[00m\]\n\$ "'

# set X forwarding if in SSH session
if [ -n "$SSH_CONNECTION" ]; then
        CLIENT_IP=`echo $SSH_CONNECTION | cut -d' ' -f1`:0
        export DISPLAY="$CLIENT_IP"

        # this fixes 'libGL error: No matching fbConfigs or visuals found' in ssh X sessions
        export LIBGL_ALWAYS_INDIRECT=1
fi
