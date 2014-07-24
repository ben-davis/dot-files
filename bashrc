#  ---------------------------------------------------------------------------
#
#  Description:  Generic bash configuration
#
#  ---------------------------------------------------------------------------

#   -------------------------------
#   GIT CONFIGURATION
#   -------------------------------

source ~/.git-completions
source ~/.git-prompt-info


#   -------------------------------
#   ENVIRONMENT CONFIGURATION
#   -------------------------------

export PS1='\[\033[0;36m\]\u\[\033[00;36m\]@\[\033[00;36m\]\h: \[\033[00;34m\]\[\033[01;33m\]\w \[\033[00;32m\]$(git_prompt) \[\033[00m\]'


#   -------------------------------
#   ALIASES
#   -------------------------------

function ll() { ls -lFh --color=always "$@" | grep -v .DS_Store ;}
alias ls='ls --color=always'
alias tree='tree -C'
alias tmux="tmux -2"

#   -------------------------------
#   CUSTOM CONFIGURATION
#   -------------------------------

source ~/.bashrc-custom
