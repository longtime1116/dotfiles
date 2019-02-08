export PS1="[\u:\w]$"
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
export MANPATH=/opt/local/man:$MANPATH

alias gdb="gdb -q"

alias gccw='gcc -Wall -o'
alias gppw='g++ -Wall -o'
alias gccd='gcc -g -O0 -o'
alias gppd='g++ -g -O0 -o'

function cl() { clang -o $1 $2 -Weverything; }
function cld() { clang -o $1 $2 -g -O0; }

alias ctag='ctags --exclude=".git*" -R .'
alias ctag_rails='ctags --langmap=RUBY:.rb --exclude="*.js"  --exclude=".git*" -R .'

alias mk='make'
alias mc='mk clean'

alias ls='ls -h'
alias sl='ls -h'
alias vi='vim'
alias v='vim'
alias iv='vim'

alias gr='grep --color -n'
alias grr='gr -R'

alias gb='git branch'
alias gc='git checkout'
alias gcm='git checkout master'
alias gcd='git checkout master'
alias gs='git status'
alias gd='git diff'
alias gg='git grep'

alias fn='find ./ -name'

# node.js
source ~/.nvm/nvm.sh

# python
PYTHONSTARTUP=~/.pythonrc.py
export PYTHONSTARTUP


# $ ruby -v した時に、rbenv で設定した ruby と同じものを使うように
eval "$(rbenv init -)"
eval "$(pyenv init -)"

export GOPATH="$HOME/develop/go_workspace"
export PATH=$PATH:$GOPATH/bin
