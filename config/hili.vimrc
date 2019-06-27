" Show highlighting groups for current word
nnoremap <C-S-E> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" set t_co=256
silent! colorscheme base16-porple
" silent! colorscheme molokai
" set fillchars+=vert:\|
" highlight VertSplit guibg=0
" colorscheme base16-atelier-sulphurpool
" highlight Normal guibg=none ctermbg=none


set mousemodel=popup
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10

if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=Menlo:h12
    set transparency=7
  endif
else
  let g:CSApprox_loaded = 1

  " IndentLine
  let g:indentLine_enabled = 1
  let g:indentLine_concealcursor = 0
  let g:indentLine_char = '┆'
  let g:indentLine_faster = 1


endif



"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif


" More GUI stuff
" Hide all scrollbars
set guioptions=
" set guioptions+=e
" Switch off the bell
set noerrorbells
set novisualbell
" set t_vb=
" autocmd! GUIEnter * set vb t_vb=

augroup _softwrap
  " My Custom Highligting -----------
  " Highlight the 81st column
 " highlight ColorColumn ctermbg=7 guibg=#d3d3d3
 " autocmd! BufWritePost * call matchadd('ColorColumn', '\%81v', 100)
augroup END

" Solarized List chars
" highlight CursorLine ctermbg=none guibg=none guifg=none
" highlight SpecialKey ctermbg=none ctermfg=0
"
" highlight LightlineMiddle_normal ctermbg=24 ctermfg=11 guibg=#268bd2
" highlight LightlineMiddle_active ctermbg=24 ctermfg=11 guibg=#268bd2
" highlight LightlineMiddle_command ctermbg=24 ctermfg=1 guibg=#268bd2
" highlight LightlineMiddle_insert ctermbg=24 ctermfg=11 guibg=#268bd2
"
" highlight LightlineLeft_normal_1_2 ctermbg=24 ctermfg=11 guibg=#268bd2 guifg=#839496
" highlight LightlineLeft_active_1_2 ctermbg=24 ctermfg=11 guibg=#268bd2 guifg=#839496
" highlight LightlineLeft_command_1_2 ctermbg=24 ctermfg=11 guibg=#268bd2 guifg=#839496
" highlight LightlineLeft_insert_1_2 ctermbg=24 ctermfg=11 guibg=#268bd2 guifg=#839496
" highlight LightlineRight_normal_2_3 ctermbg=24 ctermfg=0 guibg=#268bd2 guifg=#eee8d5
" highlight LightlineRight_active_2_3 ctermbg=24 ctermfg=0 guibg=#268bd2 guifg=#eee8d5
" highlight LightlineRight_command_2_3 ctermbg=24 ctermfg=0 guibg=#268bd2 guifg=#eee8d5
" highlight LightlineRight_insert_2_3 ctermbg=24 ctermfg=0 guibg=#268bd2 guifg=#eee8d5
"
" " Line numbers
"  highlight LineNr ctermfg=241
"
" " Dark Solarized
" highlight Visual cterm=none ctermfg=none ctermbg=0

" Lightline colour stuff here! {{{
" highlight LightlineMiddle_active ctermfg=11 ctermbg=238
" highlight LightlineLeft_active_1_2 ctermfg=11 ctermbg=238
" highlight LightlineRight_active_2_3 ctermfg=0 ctermbg=238
" highlight LightlineMiddle_inactive ctermfg=11 ctermbg=244
" highlight LightlineLeft_inactive_0_1 ctermbg=244
" highlight LightlineRight_inactive_1_2 ctermbg=244
" highlight LightlineRight_inactive_2_3 ctermbg=244
" }}}

" highlight CursorLine ctermbg=8
" highlight LightlineRight_normal_2_3 ctermfg=11 ctermbg=239

" Space Grey stuff
" highlight Visual cterm=none ctermfg=none ctermbg=236
" highlight Search cterm=none ctermfg=0 ctermbg=9
" highlight SignColumn ctermbg=234
" highlight CursorLine ctermbg=none guibg=none guifg=none
" highlight CursorLineNr ctermbg=233
" highlight LineNr ctermfg=239 ctermbg=234
" highlight Folded ctermbg=235
" highlight LineNr ctermbg=233 ctermfg=238
" highlight Search ctermbg=30
" highlight TabLine ctermbg=233
" highlight Statement ctermfg=12
" highlight SpecialKey ctermfg=30
" highlight TabLine ctermbg=0
"
" highlight LightlineMiddle_normal ctermbg=24 ctermfg=11 guibg=#268bd2
" highlight LightlineMiddle_active ctermbg=24 ctermfg=11 guibg=#268bd2
" highlight LightlineMiddle_command ctermbg=24 ctermfg=1 guibg=#268bd2
" highlight LightlineMiddle_insert ctermbg=24 ctermfg=11 guibg=#268bd2
"
" highlight LightlineLeft_normal_1_2 ctermbg=24 ctermfg=239
" highlight LightlineLeft_active_1_2 ctermbg=24 ctermfg=239
" highlight LightlineLeft_command_1_2 ctermbg=24 ctermfg=239
" highlight LightlineLeft_insert_1_2 ctermbg=24 ctermfg=239
" highlight LightlineRight_normal_2_3 ctermbg=24 ctermfg=236
" highlight LightlineRight_active_2_3 ctermbg=24 ctermfg=236
" highlight LightlineRight_command_2_3 ctermbg=24 ctermfg=236

" One Dark Stuff
" highlight LightlineMiddle_normal ctermbg=24 ctermfg=11 guibg=#268bd2
" highlight LightlineMiddle_active ctermbg=24 ctermfg=11 guibg=#268bd2
" highlight LightlineMiddle_command ctermbg=24 ctermfg=1 guibg=#268bd2
" highlight LightlineMiddle_insert ctermbg=24 ctermfg=11 guibg=#268bd2
"
" highlight LightlineLeft_normal_1_2 ctermbg=24 ctermfg=236 guifg=#3E4452 guibg=#268bd2
" highlight LightlineLeft_active_1_2 ctermbg=24 ctermfg=236 guifg=#3E4452 guibg=#268bd2
" highlight LightlineLeft_command_1_2 ctermbg=24 ctermfg=236 guifg=#3E4452 guibg=#268bd2
" highlight LightlineLeft_insert_1_2 ctermbg=24 ctermfg=236 guifg=#3E4452 guibg=#268bd2
" highlight LightlineRight_normal_2_3 ctermbg=24 ctermfg=236 guifg=#282C34 guibg=#268bd2
" highlight LightlineRight_active_2_3 ctermbg=24 ctermfg=236 guifg=#282C34 guibg=#268bd2
" highlight LightlineRight_command_2_3 ctermbg=24 ctermfg=236 guifg=#282C34 guibg=#268bd2

" Below
" highlight Visual cterm=none ctermbg=238 ctermfg=none
" highlight CursorLineNr ctermfg=30 ctermbg=black " The non-black cursor line number
" Below
" highlight CursorLineNr ctermfg=30 ctermbg=236
" Below
" highlight Cursor ctermfg=none
" Below
" highlight CursorLine ctermbg=236 cterm=none
" highlight CursorLine ctermbg=234 cterm=none
" Below
" highlight LineNr ctermfg=242 ctermbg=236
" Below
" highlight Search ctermbg=238 ctermfg=none
" Below
" highlight Type ctermfg=197
" Below
" highlight vimHighlight ctermfg=197
" Below
" highlight vimCommand ctermfg=197
" Below
" highlight Number ctermfg=148
" Below
" highlight Folded ctermbg=24 ctermfg=7

" highlight htmlTagName ctermfg=125

" New light theme
" highlight NERDTreeDir ctermfg=31
" highlight vimGroup ctermfg=31
" highlight PreProc ctermfg=31
" highlight vimCommand ctermfg=196

" General highlighting
" highlight Normal ctermfg=16
" highlight SpellBad ctermbg=DarkRed
" highlight LineNr ctermfg=DarkYellow
" highlight Special ctermfg=24
" highlight PreProc ctermfg=1
" highlight Type ctermfg=22
" highlight Search cterm=Bold ctermfg=DarkYellow
" highlight MRUFileName ctermfg=23
" highlight helpHyperTextEntry ctermfg=2
" highlight helpHeader ctermfg=2
" highlight Pmenu ctermfg=16 cterm=Bold
" highlight Identifier ctermfg=0 cterm=Bold
" highlight Statement ctermfg=125
" highlight String ctermfg=1
" highlight clear Visual
" highlight Visual ctermbg=Grey
" highlight Boolean cterm=Bold ctermfg=178

" Highlight the current line number
" highlight clear CursorLine
" hi CursorLineNR cterm=bold ctermfg=Red

" HTML5 highlighting {{{
" highlight htmlH5 ctermfg=115
" highlight htmlH6 ctermfg=150
" highlight htmlSpecialChar ctermfg=197
" }}}

" TypeScript Highlighting {{{
" highlight typescriptFuncKeyword ctermfg=37
" }}}

" Clojure Highlighting {{{
" highlight clojureVariable cterm=Bold ctermfg=23
" }}}

" Python {{{
let python_highlight_all=1
" }}}

" Comments
" highlight Comment cterm=italic gui=italic
" highlight htmlCommentPart cterm=italic gui=italic

" Pmenu
" highlight Pmenu cterm=none

" My hi functions
"
" Set light theme settings for base16-github colorscheme
function! SetLightThemeStuff()
    " highlight Comment cterm=italic gui=italic
    " highlight CursorLine ctermbg=none guibg=none guifg=none
    " highlight Pmenu guibg=#707880 gui=bold
endfunction

" Highlighting for Python
" highlight pythonBuiltinBold cterm=Bold ctermfg=Blue
" highlight pythonBoolean cterm=bold ctermfg=53
" highlight pythonFunction cterm=bold ctermfg=23
" End of my custom highligting -----------
