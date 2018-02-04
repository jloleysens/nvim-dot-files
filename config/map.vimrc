" Nav to config files
nnoremap <leader><leader>m :vs ~/.config/nvim/config/map.vimrc<CR>
nnoremap <leader><leader>h :vs ~/.config/nvim/config/hili.vimrc<CR>
nnoremap <leader><leader>z :vs ~/.zshrc<CR>

" My stuff
nnoremap <S-x> o<C-c>
nnoremap <S-Tab> O<C-c>
" Place between {} or if double emph{}
nnoremap <leader>{ `<i{<C-c>`>la}<C-c>
nnoremap <leader><leader>{ `<i\emph{<C-c>`>6la}<C-c>
" Format paragraph
nnoremap <leader>x }gq{``
" clear search
nnoremap <leader>z :noh<CR>
" open recent files
" nnoremap <leader><leader>o :MRU<CR>

" Use the homerow
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" nnoremap <down> <nop>
" nnoremap <up> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>
" inoremap <down> <nop>
" inoremap <up> <nop>

" cd Shortcuts
nnoremap <leader>cdje :lcd ~/dev/journey-app-editor<CR>

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" bind \ (backward slash) to grep shortcut
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

" Edit my eslintrc file
nnoremap <leader>jse :vs ~/.eslintrc.json

" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Terminal keys
" tnoremap <Esc> <C-\><C-n>
" tnoremap <A-o> <C-\><C-n>gt
" tnoremap <A-b> <C-\><C-n>gT
" tnoremap <A-c> <C-\><C-n>:tabnew<CR>
" tnoremap <A-h> <C-\><C-n><C-w>h
" tnoremap <A-j> <C-\><C-n><C-w>j
" tnoremap <A-k> <C-\><C-n><C-w>k
" tnoremap <A-l> <C-\><C-n><C-w>l
" Above commented out for Mvim
tnoremap ø <C-\><C-n>gt
tnoremap ∫ <C-\><C-n>gT
tnoremap ç <C-\><C-n>:tabnew<CR>
tnoremap ˙ <C-\><C-n><C-w>h
tnoremap ∆ <C-\><C-n><C-w>j
tnoremap ˚ <C-\><C-n><C-w>k
tnoremap ¬ <C-\><C-n><C-w>l

" nnoremap <A-o> gt
" nnoremap <A-b> gT
" nnoremap <A-c> :tabnew<CR>
" nnoremap <A-h> <C-w>h
" nnoremap <A-j> <C-w>j
" nnoremap <A-k> <C-w>k
" nnoremap <A-l> <C-w>l
nnoremap ø gt
nnoremap ∫ gT
nnoremap ç :tabnew<CR>
nnoremap ˙ <C-w>h
nnoremap ∆ <C-w>j
nnoremap ˚ <C-w>k
nnoremap ¬ <C-w>l
" Gotta have o somewhere!
nnoremap <Leader>o <C-o>

nnoremap <leader><leader>n :vs ~/grive/notes.md<CR>
nnoremap <leader><leader>N :e ~/grive/notes.md<CR>

" Visual Mode
vnoremap , <
vnoremap . >

" Cool test stuff
nnoremap <leader>l :TestLast<CR>

" Prettier shortcut
nnoremap <leader>p :Prettier<CR>:w<CR>

" Split current window and open terminal in a left split
nnoremap <C-w>t :vsp \| terminal<CR>

" {{{ NERDTree
nnoremap <leader><leader>f :NERDTreeFind<CR>
" }}}

" Ultisnips {{{
" inoremap <C-@> <c-r>=UltiSnips#ExpandSnippet()<cr>
" }}}

" {{{ Utilities
" Prettify JSON
nnoremap <leader>js :%!python -m json.tool<CR>
" }}}

" FZF {{{
nnoremap <C-p> :Files<CR>
" }}}

" Ctags {{{
nnoremap <leader>t :!ctags -R .<cr>
" nnoremap <leader>. :CtrlPTag<cr>
nnoremap <leader>. :Tags<cr>
" }}}

" General Abbreviation maps ------------------------------ {{{
iabbrev waht what
iabbrev teh the
iabbrev hte the
iabbrev tehn then
iabbrev ot to
iabbrev wehn when
" iabbrev color colour              " Was causing issues with CSS
iabbrev seperation separation
iabbrev @@ jloleysens@gmail.com
iabbrev usch such
iabbrev meida media
iabbrev hypothesize hypothesise
iabbrev hypothesized hypothesised
iabbrev battelfield battlefield
" Experimenting with markdown
iabbrev **t **this**
" }}}

" {{{ Experimental
inoremap jk <esc>
tnoremap jk <C-\><C-n>
" For training:
" inoremap <C-c> <nop>
" inoremap <esc> <nop>
nnoremap <C-f> Vapzf

" Highlight trailing missing characters <-- these have been replaced by listchars
" nnoremap <leader>w :execute "match Error " . '/\v +$/' <CR>
" nnoremap <leader>W :execute "match None " . '/\v +$/' <CR>

" Yank and paste contents of buffer
nnoremap <leader><leader>y ggyG<c-o>
nnoremap <leader><leader>p ggVGp

" Swop colon and semicolon
" nnoremap ; :
" nnoremap : ;

" Remove all trailing white space
nnoremap <leader><leader>s :%s/\v\s+$//gi<CR>
" }}}

" Operator pending maps ------------------------------ {{{
onoremap p i(
onoremap b i{
onoremap a i'
onoremap c i"
onoremap in( :<C-u>normal! f(vi(<CR>
onoremap il( :<C-u>normal! F)vi(<CR>
onoremap in{ :<C-u>normal! f{vi{<CR>
onoremap il{ :<C-u>normal! F}vi{<CR>
onoremap nw :<C-u>normal! wve<CR>b
" }}}

" EMCAScript file mappings {{{
augroup emcascript_group
  autocmd!
  autocmd FileType javascript  let maplocalleader=','
  autocmd FileType javascript  nnoremap <buffer> <localleader>c I// <C-c>
  autocmd FileType javascript  nnoremap <buffer> <localleader>us ggO'use strict';<C-C>
  autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
augroup END
" }}}

" Golang file mappings{{{
au FileType go nmap <buffer> <leader><leader>r <Plug>(go-run)
au FileType go nmap <buffer> <leader><leader>b <Plug>(go-build)
au FileType go nmap <buffer> <leader><leader>t <Plug>(go-test)
au FileType go nmap <buffer> <leader><leader>c <Plug>(go-coverage)
au FileType go nmap <buffer> <leader><leader>ds <Plug>(go-def-split)
au FileType go nmap <buffer> <leader><leader>dv <Plug>(go-def-vertical)
au FileType go nmap <buffer> <leader><leader>dt <Plug>(go-def-tab)
au FileType go nmap <buffer> <leader><leader>gd <Plug>(go-doc)
au FileType go nmap <buffer> <leader><leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <buffer> <leader><leader>gb <Plug>(go-doc-browser)
au FileType go nmap <buffer> <leader><leader>s <Plug>(go-implements)
au FileType go nmap <buffer> <leader><leader>i <Plug>(go-info)
au FileType go nmap <buffer> <leader><leader>e <Plug>(go-rename)
" augroup jlos_go_group
"     autocmd!
"     autocmd FileType go        let maplocalleader=','
"     " Go related build commands and such
"     autocmd FileType go        nnoremap <buffer> <localleader>r <Plug>(go-run)
"     autocmd FileType go        nnoremap <buffer> <localleader>b <Plug>(go-build)
"     autocmd FileType go        nnoremap <buffer> <localleader>t <Plug>(go-test)
"     autocmd FileType go        nnoremap <buffer> <localleader>c <Plug>(go-coverage)
"     autocmd FileType go        nnoremap <buffer> <localleader>ds <Plug>(go-def-split)
"     autocmd FileType go        nnoremap <buffer> <localleader>dv <Plug>(go-def-vertical)
"     autocmd FileType go        nnoremap <buffer> <localleader>dt <Plug>(go-def-tab)
"     autocmd FileType go        nnoremap <buffer> <localleader>gd <Plug>(go-doc)
"     autocmd FileType go        nnoremap <buffer> <localleader>gv <Plug>(go-doc-vertical)
"     autocmd FileType go        nnoremap <buffer> <localleader>gb <Plug>(go-doc-browser)
"     " autocmd FileType go        nnoremap <buffer> <localleader>s <Plug>(go-implements)
"     autocmd FileType go        nnoremap <buffer> <localleader>i <Plug>(go-info)
"     autocmd FileType go        nnoremap <buffer> <localleader>e <Plug>(go-rename)
" }}}

" Lisp file maps {{{
augroup lisp_group
  autocmd!
  autocmd FileType lisp       let maplocalleader=','
  autocmd FileType lisp       nnoremap <buffer> <localleader>c I; <C-c>
augroup END
" }}}

" Clojure file maps {{{
augroup clojure_group
  autocmd!
  autocmd FileType clojure       let maplocalleader=','
  autocmd FileType clojure       nnoremap <buffer> <localleader>c I; <C-c>
  autocmd FileType clojure       setlocal foldmethod=marker
augroup END
" }}}

" Vim file maps ------------------------------ {{{
augroup vim_group
    autocmd!
    autocmd FileType vim        let maplocalleader=','
    " Comment out line in vim file
    autocmd FileType vim        nnoremap <buffer> <localleader>c I" <C-c>
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Yaml file maps ------------------------------ {{{
augroup yaml_group
    autocmd!
    autocmd FileType yaml       let maplocalleader=','
    autocmd FileType yaml       nnoremap <buffer> <localleader>c I# <C-c>
augroup END
" }}}

" Ruby file maps ------------------------------ {{{
augroup ruby_group
  autocmd!
  autocmd FileType ruby        let maplocalleader=','
  " Comment out line in vim file
  autocmd FileType ruby        nnoremap <buffer> <localleader>c I# <C-c>
  autocmd FileType ruby setlocal foldmethod=marker
augroup END
" }}}

" Tex file maps ------------------------------ {{{
augroup tex_group
  autocmd!
  " E and B
  autocmd FileType tex        nnoremap <buffer> <S-b> bi
  autocmd FileType tex        nnoremap <buffer> <S-e> ea
  " autocmd FileType tex        nnoremap <leader>x }gq{``
  autocmd FileType tex        :iabbrev <buffer> bb \begin{}<CR>\end{}
augroup END
" }}}

" Python file maps ------------------------------ {{{
augroup python_group
    autocmd!
    " vim-pudb
    autocmd FileType python     nnoremap <F10> :TogglePudbBreakPoint<CR>
    autocmd FileType python     let maplocalleader=','
    autocmd FileType python     nnoremap <buffer> <localleader>c I# <C-c>
    " Closing parentheses, brackets, apostrophes and double quotes
    " autocmd FileType python     inoremap ' ''<left>
    " autocmd FileType python     inoremap " ""<left>
    " autocmd FileType python     inoremap { {}<left>
    " autocmd FileType python     inoremap ( ()<left>
augroup END
" }}}
