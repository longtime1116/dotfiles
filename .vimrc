" escape を楽に
inoremap jj <esc>
inoremap jk <esc>
" インサートモードで左右に移動
inoremap <C-h> <Left>
inoremap <C-l> <Right>
" s/S で ruby のコメントアウトつける&消す
noremap <S-s> k$ i#<esc>
noremap s k$ x<esc>

" 画面表示の設定

set wildmode=list:longest
" _/_/_/_/ Initialization  _/_/_/_/
filetype off " Disable filetype temporary

" _/_/_/_/ Common settings _/_/_/_/
syntax enable

set encoding=utf-8
set fileencodings=utf-8,sjis,euc
set fileformats=unix,dos,mac

set directory=~/.vim/swap " Directory for swap files
set backupdir=~/.vim/backup " Directory for backup files
set number " Show line numbers
set incsearch " Enable incremental search
set hlsearch " Highlight search targets
set ignorecase smartcase " Ignore case when searching only with small letters
set showmatch " Highlight matching brackets
set matchtime=1
set showmode " Show current mode of Vim
set title " Show editing file title
set ruler " Show ruler
set expandtab " Put whitespace when type tab
set tabstop=2 " Tab width
set shiftwidth=2 " Indent width
set softtabstop=2 " Moving width of cursor to consecutive spaces when type tab, backspace, etc.
set autoindent " Follow indent width of the previous line when starting a new line
set smartindent " Indent nicely for C-like programs when starting a new line
set scrolloff=10 " Show 10 lines below cursor when scrolling
set backspace=indent,eol,start " Enable backspace key
set virtualedit=block " Remove the cursor restriction on rectangular selection
set ambiwidth=double " Make ambiguous width single (Note: Coordinate settings of Vim and terminal)
set wrap " Wrap long lines
set nofoldenable " Disable text folding
set clipboard=unnamed,unnamedplus " Copy it to clipboard on yanking text
"set spell " Enable spell check
set spelllang+=cjk " Exclude Japanese on spell check
set mouse=a " Enable mouse
set vb t_vb= " Disable beep sound

" Indent width by language
augroup vimrc
  autocmd!
  autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 softtabstop=4
  autocmd FileType java setlocal tabstop=4 shiftwidth=4 softtabstop=4
  autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
  autocmd Filetype ruby setlocal expandtab   softtabstop=2 shiftwidth=2 tabstop=2
  autocmd Filetype javascript setlocal expandtab   softtabstop=2 shiftwidth=2 tabstop=2
  autocmd Filetype typescript setlocal expandtab   softtabstop=2 shiftwidth=2 tabstop=2
  autocmd Filetype gitconfig  setlocal noexpandtab softtabstop=4 shiftwidth=4 tabstop=4
  autocmd Filetype gitcommit  setlocal expandtab   softtabstop=2 shiftwidth=2 tabstop=2
augroup END

" Show invisible characters
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%

" Show zenkaku whitespace
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/

" Configure undo feature
if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
  set undolevels=1000
  set undoreload=10000
endif

" Enable matchit
if !exists('loaded_matchit')
  runtime macros/matchit.vim
endif

" Run keyword completion on inputting characters
set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
  exec "inoremap " . k . " " . k . "<C-N><C-P>"
endfor

" # Key mappings
" Cancel search highlighting by typing ESC key twice
nnoremap <silent> <Esc><Esc> :nohlsearch<LF>
" Show a list when there are multiple targets of tag jumping
nnoremap <C-]> g<c-]>

" The prefix key.
nnoremap [Tag] <Nop>
nmap t [Tag]

set showtabline=2 " Show tab line

" Tab jump: from [Tag]1 to [Tag]2
for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n ':<C-u>tabnext'.n.'<CR>'
endfor

filetype plugin indent on " Re-enable filetype
