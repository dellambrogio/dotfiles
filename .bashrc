# add to bashrc
# [ -e /opt/local.inc ] && . /opt/local.inc

# . /usr/share/git-core/contrib/completion/git-prompt.sh

# common
export PATH=$PATH:$HOME/dotfiles/bin

# Adding git branch on the Bash command prompt
# PS1=':\[\033[0;31m\]\W\[\033[0;32m\]$(__git_ps1)\[\033[00m\]\$ '

# hidpi
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCREEN_SCALE_FACTORS=2
export GDK_SCALE=2

# readmd in terminal
rmd () {
	pandoc $1 | lynx -stdin
}

# map the Caps Lock key to Escape key
setxkbmap -option caps:escape
# disable caps locl
# setxkbmap -option ctrl:nocaps


