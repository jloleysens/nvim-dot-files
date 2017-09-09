call plug#begin('~/.config/nvim/bundle')

" General {{{
Plug 'Shougo/deoplete.nvim'                      " Async autocompletion
Plug 'itchyny/lightline.vim'                     " Pretty bar at the bottom of the screen!
Plug 'tpope/vim-fugitive'                        " Wrapper for Git and displaying current branch in lightline
Plug 'ervandew/supertab'                         " Tab life!
Plug 'tpope/vim-surround'                        " Quickly change surrounding stuff
Plug 'rhysd/vim-grammarous', {'for': 'markdown'} " Grammar checker - used primarily for MD files
" Plug 'yegappan/mru'
Plug 'vim-scripts/marvim'                        " Store for handy macros
" Plug 'vim-scripts/YankRing.vim'                               " Remember what I typed?
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'Valloric/YouCompleteMe'
" Plug 'tpope/vim-rails'                                      " Handy dandy rails project navigation and cmds
" Plug 'vim-scripts/dbext.vim'                                " For connecting to a db via vim
" Plug 'thinca/vim-ref'                                       " Elixir documentation lookup
" Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' } " Elixir omni completion deoplete integration and doc stuff
" Plug 'slashmili/alchemist.vim'                              " Elixir integration for vim
" Plug 'vim-scripts/vim-auto-save'
" Plug 'KangOl/vim-pudb'
" }}}

" TypeScript{{{
Plug 'Shougo/vimproc.vim', {'do': 'make'} " Async execution library (used by TypeScript)
Plug 'Quramy/tsuquyomi'                   " TypeScript highlighting and ts server integration for Vim
Plug 'leafgarland/typescript-vim'         " TypeScript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'       " TypeScript syntax highlighting w/ DOM
" }}}

" ECMAScript {{{
Plug 'pangloss/vim-javascript'  " Node syntax highlighting!
Plug 'ternjs/tern_for_vim'      " Tern completion for JS
Plug 'carlitux/deoplete-ternjs' " Tern integration with deoplete
Plug 'maksimr/vim-jsbeautify'   " They see me indenting, they hatin'
" Plug 'moll/vim-node'                                        " Same as vim-rails is but for nodejs
" }}}

" Clojure {{{
" Plug 'xolox/vim-session'      " Requires vim-misc plug in to use...
" Plug 'tpope/vim-fireplace'    " For connecting to a nrepl server from within vim buffer
" Plug 'venantius/vim-cljfmt'   " Some format tooling!
" Plug 'venantius/vim-eastwood' " Hello clj linting!
" Plug 'guns/vim-clojure-static'
" Plug 'guns/vim-clojure-highlight'
" Plug 'gberenfield/cljfold.vim'
" Plug 'tpope/vim-salve'        " Requires vim firepleace << slows startup
" Plug 'dgrnbrg/vim-redl'       " Clojure debugger
" }}}

" Golang {{{
" Plug 'zchee/deoplete-go', { 'do': 'make'}
" Plug 'fatih/vim-go'
" }}}

" Syntax Highlighting{{{
" Plug 'digitaltoad/vim-pug'       " Pug (formerly Jade) syntax highlighting
Plug 'vim-ruby/vim-ruby'         " Ruby and eruby syntax highlighting
Plug 'hallison/vim-ruby-sinatra' " Sinatra syntax highlighting and snippets
Plug 'mxw/vim-jsx'               " Weclome react highligting
Plug 'elixir-lang/vim-elixir'    " Elixir-lang's endorsed vim plugin
" Plug 'briancollins/vim-jst'      " JST file type syntax
" Plug 'jelera/vim-javascript-syntax' " More Node syntax highlighting!
"Plug 'nvie/vim-flake8'               " Pythonicncess
" Plug 'hdima/python-syntax'
" }}}

" Utils (IDE-like stuff) {{{
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'gcmt/taboo.vim'                                  " Rename tabs
Plug 'jiangmiao/auto-pairs'                            " Matching brackets and stuff on the fly
Plug 'majutsushi/tagbar'                               " Tag explorer (mapped to <F8>)
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } " File explorer (mapped to <F9>)
Plug 'junegunn/vim-easy-align'                         " Aligning stuff - currently not really using this
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'neomake/neomake'                                 " Async linting = life
Plug 'w0rp/ale'                                        " Async linting = life
Plug 'airblade/vim-gitgutter'                          " Show changes according to git-diff
Plug 'heavenshell/vim-jsdoc', { 'for': 'javascript' }  " Auto js doc
Plug 'galooshi/vim-import-js'                          " Auto import-js (and/or require)
" Plug 'KabbAmine/vCoolor.vim'
Plug 'tpope/vim-unimpaired'
" Plug 'flowtype/vim-flow'
" Plug 'neovim/node-host', { 'do': 'npm install' }
" Plug 'vimlab/mdown.vim', { 'do': 'npm install' }
" Plug 'Yggdroot/indentLine'                             " Code indentation
" Plug 'vim-scripts/paredit.vim'        " Burpage and slurpage!
" Plug 'scrooloose/syntastic'           " Basic sanity checking on code
" Plug 'PeterRincker/vim-argumentative' " Arguments?
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'vim-scripts/TailMinusF'         " For opening a buffer that will update as the file changes
" Plug 'Lokaltog/vim-easymotion'        " Moving around files faster
" }}}

" Colorschemes {{{
Plug 'altercation/vim-colors-solarized'
Plug 'ajh17/Spacegray.vim'
Plug 'joshdick/onedark.vim'
Plug 'freeo/vim-kalisi'
Plug 'ashfinal/vim-colors-violet'
Plug 'mhartington/oceanic-next'
Plug 'kudabux/vim-srcery-drk'
Plug 'chriskempson/base16-vim'
Plug 'cocopon/lightline-hybrid.vim'
Plug 'dracula/vim'
" Plug 'endel/vim-github-colorscheme'
" Plug 'aliou/moriarty.vim'           " Nice colour scheme for Ruby and stuff
Plug 'NLKNguyen/papercolor-theme'   " Nice colour scheme for JS and stuff
" Plug 'iCyMind/NeoSolarized'         " Neo Solarized
" Plug 'dncnmcdougall/vim-customisation'
" Plug 'flazz/vim-colorschemes'       " All of the colorschemes
" Plug 'KeitaNakamura/neodark.vim'    " Dark blue, more like VS Code's default
" Plug 'tyrannicaltoucan/vim-quantum' " Dark blue, more like VS Code's default
" Plug 'morhetz/gruvbox'              " Nice warmness
" Plug 'tpope/vim-vividchalk'         " Old school-ish theme
" Plug 'euclio/vim-nocturne'          " Dark high contrast
" }}}

" I don't know any more {{{
" Plug 'shaond/vim-guru'
" Plug 'wikitopian/hardmode' " Why????
" }}}

call plug#end()
