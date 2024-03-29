set number
set ruler
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<
set incsearch
set hlsearch
set nowrap
set showmatch
set whichwrap=h,l
set nowrapscan
set ignorecase
set smartcase
set hidden
set history=2000
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set helplang=en
set clipboard+=unnamed
set clipboard+=autoselect


"//--------
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
inoremap <silent> jj <ESC>


syntax on
colorscheme molokai
set t_Co=256
hi Comment ctermfg=gray

set cursorline
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE

"//------- ctags
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis
set tags=.tags;${HOME}


set modeline
