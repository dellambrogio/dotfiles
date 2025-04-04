# add to bashrc
# [ -e ~/dotfiles/.bashrc ] && . ~/dotfiles/.bashrc
# 

# vim default
export VISUAL=vim
export EDITOR="$VISUAL"

# . /usr/share/git-core/contrib/completion/git-prompt.sh

# common
export PATH=$PATH:$HOME/dotfiles/bin
export PATH="$HOME/.local/bin:$PATH"


# Adding git branch on the Bash command prompt
PS1=':\[\033[0;31m\]\W\[\033[0;32m\]$(__git_ps1)\[\033[00m\]\$ '

# hidpi
# export QT_AUTO_SCREEN_SCALE_FACTOR=0
# export QT_SCREEN_SCALE_FACTORS=2
# export GDK_SCALE=2


# aliases
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# alias ls='lsd'

# map the Caps Lock key to Escape key
# setxkbmap -option caps:escape
# disable caps locl
# setxkbmap -option ctrl:nocaps


