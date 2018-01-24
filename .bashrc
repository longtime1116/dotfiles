export PS1="[\u:\w]$"
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/man:$MANPATH

alias gccw='gcc -Wall -o'
alias gppw='g++ -Wall -o'
alias gccd='gcc -g -O0 -o'
alias gppd='g++ -g -O0 -o'

alias ctags='/usr/local/Cellar/ctags/5.8/bin/ctags'
alias ctag='ctags --langmap=RUBY:.rb --exclude="*.js"  --exclude=".git*" -R .'

alias ls='ls -h'
alias sl='ls -h'
alias vi='vim'
alias v='vim'
alias iv='vim'

alias gr='grep --color -n'
alias grr='gr -R'

alias gg='git grep -n'
alias gb='git branch'
alias gc='git checkout'
alias gs='git status'
alias gd='git diff'
alias gl='git l'

# node.js
source ~/.nvm/nvm.sh

# $ ruby -v した時に、rbenv で設定した ruby と同じものを使うように
eval "$(rbenv init -)"

