export TERM=xterm-color
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
alias internet='lsof -P -i -n | cut -f 1 -d " " | uniq'
alias todo="grep -R  -n -e '##TODO' -e '# =>' * ; grep -R -n -o 'TODO.*' ."
alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport"
alias tunnel="ssh -D 8080 -f -C -q -N gabe@ieee.berkeley.edu"
source ~/.local/bin/bashmarks.sh
eval "$(rbenv init -)" 
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
function lt() { mkdir ~/notes/"$@" ; mate ~/notes/"$@"/"$@".tex ;}
PS1="\e[1;32m\t\e[m [\e[0;34m\u:\e[m \e[2;30m\w\e[m ]\n-> "
export PATH="/usr/local/bin:${PATH}"
export PATH="/usr/local/sbin:${PATH}"
export PATH="/usr/local/share/python:${PATH}"
export PATH="/Users/gabe/Documents/LoCal/BACnet:${PATH}"
export PATH="/usr/local/lib/node_modules:${PATH}"
export EDITOR="/usr/local/bin/vim"
[[ -s "/Users/gabe/.rvm/scripts/rvm" ]] && source "/Users/gabe/.rvm/scripts/rvm"
export CC=/usr/bin/llvm-gcc-4.2
complete -W "$(echo $(grep '^ssh ' ~/.bash_history | sort -u | sed 's/^ssh //'))" ssh
alias ta="tmux attach-session -t"
complete -W "$(echo $(tmux list-sessions | cut -d':' -f1))" ta
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"
