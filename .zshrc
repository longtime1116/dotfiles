

export PS1="[%n:%d]$"

# jで一個前のコマンドを実行
alias j='fc -e -'

alias ls='ls -h -G'
alias sl='ls'

alias vi='vim'
alias v='vim'
alias iv='vim'

alias fn='find ./ -name'

alias gr='grep --color -n'
alias grr='gr -R'

alias gb='git branch'
alias gc='git checkout'
alias gs='git status'
alias gd='git diff'
alias gg='git grep'

# brew で install したものを使う
alias ctags="`brew --prefix`/bin/ctags"
alias ctag='ctags -R -f tags .'
# rails 向き ctags
alias ctagr='ctags --langmap=RUBY:.rb --exclude="*.js"  --exclude=".git*" -R .'

# brew で手に入れた curl を使う
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# asdf.sh を読み込む
. "$HOME/.asdf/asdf.sh"

# For Ruby
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
