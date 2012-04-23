export TERM=xterm-color
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
alias 162="ssh cs162-in@fuji.cs.berkeley.edu"
alias internet='lsof -P -i -n | cut -f 1 -d " " | uniq'
alias todo="grep -R  -n -e '##TODO' -e '# =>' * ; grep -R -n -o 'TODO.*' ."
alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport"
alias nachos="/Users/gabe/Documents/Berkeley-11-12/CS162/nachos/bin/nachos/bin/nachos"
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
[[ -s "/Users/gabe/.rvm/scripts/rvm" ]] && source "/Users/gabe/.rvm/scripts/rvm"
export CC=/usr/bin/llvm-gcc-4.2
complete -W "$(echo $(grep '^ssh ' ~/.bash_history | sort -u | sed 's/^ssh //'))" ssh
function translate() { wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$1&langpair=$2|${3:-en}" | sed 's/.*"translatedText":"\([^"]*\)".*}/\1\n/'; }
