export CLICOLOR=1
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export TERM=xterm-256color
export TMUX_POWERLINE_SEG_WEATHER_LOCATION="2362930"
export GOPATH=$HOME/go

alias internet='lsof -P -i -n | cut -f 1 -d " " | uniq'
alias todo="grep -R  -n -e '##TODO' -e '# =>' * ; grep -R -n -o 'TODO.*' ."
alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport"
alias tmux="tmux -2"
alias ta="tmux -2 attach-session -t"
alias tl="tmux list-sessions"
alias tn="tmux new-session"
alias s3gabe="s3cmd -c ~/.s3cfg-gtfierro"
alias s3fung="s3cmd -c ~/.s3cfg-fung"
alias sshn="ssh -o UserKnownHostsFile=/dev/null"
alias scpn="scp -o UserKnownHostsFile=/dev/null"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gabe"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Change this value to set how frequently ZSH updates¬
export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew vi-mode tmux)

source $ZSH/oh-my-zsh.sh
zstyle -t ':omz:plugin:tmux:auto' start 'yes'

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# vim support!
export EDITOR="vim"
bindkey -v 

# vi style incremental search
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward

source ~/.local/bin/bashmarks.sh

alias rake="noglob rake"
alias ag="nocorrect ag"

function pipu() { for i in $(pip freeze) ; do sudo pip install --upgrade $(echo $i | cut -d'=' -f1) ; done ;}
function colors() { for i in {0..255} ; do printf "\x1b[38;5;${i}mcolour${i}\n" ; done ;}

[[ -s "/Users/gabe/.rvm/scripts/rvm" ]] && source "/Users/gabe/.rvm/scripts/rvm"

# Customize to your needs...
export PATH=/Users/gabe/.rvm/gems/ruby-1.9.3-p125/bin:/Users/gabe/.rvm/gems/ruby-1.9.3-p125@global/bin:/Users/gabe/.rvm/rubies/ruby-1.9.3-p125/bin:/Users/gabe/.rvm/bin:/usr/local/lib/node_modules:/Users/gabe/Documents/LoCal/BACnet:/usr/local/share/python:/usr/local/sbin:/usr/local/bin:/Users/gabe/.rbenv/shims:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/texbin:~/.cabal/bin 
export PYTHONPATH="/usr/local/lib/python2.7/site-packages"
