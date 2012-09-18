export EDITOR=vim
export PAGER=less

export LANG=en_US.UTF8

if uname -a | grep -q 'FreeBSDD';then
        alias ls='ls -G'
else
        alias ls='ls --color=auto'
fi

alias ll="ls -l"

