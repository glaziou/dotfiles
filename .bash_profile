alias ll="ls -lh"
alias lla="ls -lha"
alias math="/Applications/Mathematica.app/Contents/MacOS/MathKernel"
alias R='/usr/bin/R --no-save'
alias mma='/Applications/Mathematica.app/Contents/MacOS/MathKernel'
alias vi='/usr/local/bin/vim -v --servername VIM'
alias vim='/usr/local/bin/vim -v --servername VIM'
alias vp='vi ~/.bash_profile'
alias tree='tree -C'

alias gtb='cd ~/Dropbox/gtb2014'
alias gtn='cd ~/Dropbox/gtb2015'
alias tme='cd ~/Dropbox/TME/2015'
alias ev='cd ~/Dropbox/events/2015'
alias doc='cd ~/Dropbox/doc'
alias db='cd ~/Dropbox'
alias dev='cd ~/Dropbox/dev'

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export PS1="\u@\h\w$ "

export LANG=en_GB.UTF-8
export EDITOR=vim
export SHELL=bash

export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH
export R_LIBS=$HOME/Rlibs
export TERM=xterm-256color
export PYTHONIOENCODING=utf-8
export RANGER_LOAD_DEFAULT_RC=FALSE

if [ -f $(brew --prefix)/etc/bash_completion ]; then
          . $(brew --prefix)/etc/bash_completion
fi

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

set -o vi



