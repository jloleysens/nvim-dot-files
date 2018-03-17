set shell=/bin/zsh

" Set map leader
let mapleader=","

" File type
filetype plugin indent on
filetype plugin on
syntax enable
set laststatus=2

" Incremental command commands
" set inccommand=nosplit

set termguicolors
set mouse=a

" Force text to be only 80 columns long in tex files
autocmd Filetype text setlocal tw=80
autocmd Filetype tex setlocal tw=80
autocmd Filetype markdown setlocal tw=80

" List chars
" set listchars=tab:>~,nbsp:_,trail:•,eol:¬
" set listchars=tab:>~,nbsp:_,trail:•
" set list

" GUI cursor
" set guicursor=blinkon0

" Line numbers
set nu
set relativenumber
set scrolloff=5
set cursorline

" Visual block
command! Vb normal! <C-v>

" Search Options
set incsearch
set ignorecase " should be done before smartcase for reliable behaviour
set smartcase
set showcmd

" Show auto complete menu
set wildmenu

function! GetRidOfTrailingWhiteSpace()
  if !&binary && &filetype != 'diff'
    normal mz
    normal Hmy
    %s/\s\+$//e
    normal 'yz<CR>
    normal `z
  endif
endfunc

autocmd! BufWrite * call GetRidOfTrailingWhiteSpace()

" Python {{{
let g:python_host_prog = '/usr/bin/python3'
let g:python_highlight_all=1
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" }}}

" tabs
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab

" js pangloss
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1


" {{{ --- Typescript space
augroup my_ts_space_group
    autocmd!
    autocmd Filetype typescript set tabstop=2
    autocmd Filetype typescript set softtabstop=0
    autocmd Filetype typescript set expandtab
    autocmd Filetype typescript set shiftwidth=2
    autocmd Filetype typescript set smarttab
" }}}


" {{{ --- Java space
augroup java_space_group
    autocmd!
    autocmd Filetype java set tabstop=4
    autocmd Filetype java set softtabstop=0
    autocmd Filetype java set expandtab
    autocmd Filetype java set shiftwidth=4
    autocmd Filetype java set smarttab
" }}}

" {{{ --- Ruby space
augroup ruby_space_group
    autocmd!
    autocmd Filetype ruby set tabstop=2
    autocmd Filetype ruby set softtabstop=0
    autocmd Filetype ruby set expandtab
    autocmd Filetype ruby set shiftwidth=2
    autocmd Filetype ruby set smarttab
" }}}

" {{{ --- Embedded Ruby space
augroup embedded_ruby_space_group
    autocmd!
    autocmd Filetype eruby set tabstop=2
    autocmd Filetype eruby set softtabstop=0
    autocmd Filetype eruby set expandtab
    autocmd Filetype eruby set shiftwidth=2
    autocmd Filetype eruby set smarttab
" }}}

" {{{ --- YAML space
augroup yaml_space_group
    autocmd!
    autocmd FileType yaml       set tabstop=2
    autocmd FileType yaml       set softtabstop=2
    autocmd FileType yaml       set shiftwidth=2
" }}}

" JavaScript (ECMAScript) space {{{
augroup my_javascript_space_group
    autocmd!
    autocmd Filetype javascript set tabstop=2
    autocmd Filetype javascript set softtabstop=0
    autocmd Filetype javascript set expandtab
    autocmd Filetype javascript set shiftwidth=2
    autocmd Filetype javascript set smarttab
" }}}

" CSS space {{{
augroup my_css_space_group
    autocmd!
    autocmd Filetype css set tabstop=4
    autocmd Filetype css set softtabstop=0
    autocmd Filetype css set expandtab
    autocmd Filetype css set shiftwidth=4
    autocmd Filetype css set smarttab
" }}}

" Golang space {{{
augroup my_golang_space_group
    autocmd!
    autocmd Filetype go         set tabstop=4
    autocmd Filetype go         set softtabstop=0
    autocmd Filetype go         set noexpandtab
    autocmd Filetype go         set shiftwidth=4
    autocmd Filetype go         set smarttab
" }}}

" Set spelling on for certain files
autocmd Filetype tex setlocal spell
autocmd Filetype text setlocal spell
autocmd Filetype markdown setlocal spell

" Clipboard
" set clipboard^=unnamedplus
set clipboard=unnamed " MacVim way...

" Thin cursor in insert mode, yay!
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
