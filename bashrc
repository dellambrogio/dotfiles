# common
export PATH=$HOME/dotfiles/bin:$PATH

# Adding git branch on the Bash command prompt
PS1=':\[\033[0;31m\]\W\[\033[0;32m\]$(__git_ps1)\[\033[00m\]\$ '

# Qt
export QT_SCREEN_SCALE_FACTORS=2

# readmd in terminal
rmd () {
	pandoc $1 | lynx -stdin
}

# midnight commander, navigate the filesystem and cd on exit
alias mc='. /usr/lib/mc/mc-wrapper.sh'

