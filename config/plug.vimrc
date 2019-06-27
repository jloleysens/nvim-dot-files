" vim lightline
" let g:lightline ={
            " \'colorscheme': 'default',
            " \'active': {
            " \  'left': [ ['mode', 'paste'],
            " \            ['fugitive','readonly','filename','modified'] ],
            " \  'right': [ ['lineinfo'], ['column'],
            " \            [ 'filetype'] ],
            " \},
            " \ 'component_function': {
            " \   'fugitive': 'LightLineFugitive',
            " \   'readonly': 'LightLineReadonly',
            " \   'modified': 'LightLineModified',
            " \   'filename': 'LightLineFilename',
            " \ },
            " \ 'component': {
            " \   'lineinfo': "%{printf('☰ %03d/%03d', line('.'),  line('$'))} %{LinePercent()}",
            " \   'column': 'C:%c',
            " \},
            " \ 'tabline': {
            " \   'left': [ [ 'tabs' ] ],
            " \   'right': [ [ 'close' ] ],
            " \}
           " \}

" vim-airline
let g:airline_theme = 'base16_vim'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = ''
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = ''
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif

function! LinePercent()
    return line('.') * 100 / line('$') . '%'
endfunc

" Markdown preview
let g:vim_markdown_preview_hotkey = '<C-s>'
let g:vim_markdown_preview_browser = 'Google Chrome'
let g:vim_markdown_preview_github = 1

" let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
" let s:palette.normal.middle = [ [ 8, 8, 8, 8 ] ]
" let s:palette.inactive.middle = s:palette.normal.middle
" let s:palette.tabline.middle = s:palette.normal.middle

let g:Powerline_symbols = 'fancy'

" NERD Commenter {{{
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
"}}}

" Gutentags {{{
function! GTagsRunningText()
  let l:text = gutentags#statusline()
  if (strlen(l:text))
    return 'GT.'
  else
    return ''
  endif
endfunc

let g:gutentags_enabled = 1
let g:gutentags_ctags_executable = '/usr/local/bin/ctags'
" Flippin node_modules!
let g:gutentags_ctags_exclude = ['node_modules/*', '*/node_modules/*']
" }}}

" CtrlP {{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_height = 20
let g:ctrlp_working_path_mode = ''
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.?(node_modules|git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
" }}}

" The Silver Searcher {{{
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
" }}}

" FZF {{{
let g:fzf_tags_command = 'ctags -R .'
let $FZF_DEFAULT_COMMAND = 'ag -g "" --ignore node_modules'
  " function! s:update_fzf_colors()
  "   let rules =
  "   \ { 'fg':      [['Normal',       'fg']],
  "     \ 'bg':      [['Normal',       'bg']],
  "     \ 'hl':      [['Comment',      'fg']],
  "     \ 'fg+':     [['CursorColumn', 'fg'], ['Normal', 'fg']],
  "     \ 'bg+':     [['CursorColumn', 'bg']],
  "     \ 'hl+':     [['Statement',    'fg']],
  "     \ 'info':    [['PreProc',      'fg']],
  "     \ 'prompt':  [['Conditional',  'fg']],
  "     \ 'pointer': [['Exception',    'fg']],
  "     \ 'marker':  [['Keyword',      'fg']],
  "     \ 'spinner': [['Label',        'fg']],
  "     \ 'header':  [['Comment',      'fg']] }
  "   let cols = []
  "   for [name, pairs] in items(rules)
  "     for pair in pairs
  "       let code = synIDattr(synIDtrans(hlID(pair[0])), pair[1])
  "       if !empty(name) && code > 0
  "         call add(cols, name.':'.code)
  "         break
  "       endif
  "     endfor
  "   endfor
  "   let s:orig_fzf_default_opts = get(s:, 'orig_fzf_default_opts', $FZF_DEFAULT_OPTS)
  "   let $FZF_DEFAULT_OPTS = s:orig_fzf_default_opts .
  "         \ empty(cols) ? '' : (' --color='.join(cols, ','))
  " endfunction
  " let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'
  " augroup _fzf
  "   autocmd!
  "   autocmd ColorScheme * call <sid>update_fzf_colors()
  " augroup END
" }}}

" Pangloss {{{
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
" }}}

" Ale {{{
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_linters = {
\   'javascript': ['eslint', 'flow'],
\}
" }}}

" Syntastic {{{
set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.
"}}}

" Neomake {{{
" let g:neomake_javascript_enabled_makers = ['eslint']
" let g:neomake_open_list = 2
" let g:neomake_list_height = 5
" let g:neomake_warning_sign = {
  " \ 'text': 'W',
  " \ 'texthl': 'WarningMsg',
  " \ }
" let g:neomake_error_sign = {
  " \ 'text': 'E',
  " \ 'texthl': 'ErrorMsg',
  " \ }
" augroup _neomake
  " autocmd! BufWritePost * Neomake
  " nnoremap <leader>l :Neomake<CR>
  " Hacks!
  " nnoremap <leader><leader>l :lclose\|syn off\|syn on\|source ~/.config/nvim/init.vim \|sign unplace *<CR>
  " autocmd! BufWinEnter quickfix nnoremap <silent> <buffer>
              " \   q :cclose<cr>:lclose<cr>
  " autocmd! BufLeave * if (winnr('$') == 1 && &buftype ==# 'quickfix' ) |
              " \   bd|
              " \   q | endif
" augroup END
" }}}

" JsDoc {{{
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
" }}}

" YankRing {{{
let g:yankring_replace_n_pkey = '<C-y>'
let g:yankring_replace_n_nkey = '<C-I>'
" }}}

" Line Indent {{{
" let g:indentLine_color_term = 235
" let g:indentLine_char = '¦'
" let g:indentLine_conceallevel = 2
" }}}

" Typescript stuff {{{
" let g:tsuquyomi_use_local_typescript = 0
let g:tsuquyomi_tsserver_path = '${HOME}/.config/yarn/global/node_modules/.bin/tsserver'
let g:tsuquyomi_use_dev_node_module = 0
" }}}

" Vim-easy-motion
" map <Leader> <Plug>(easymotion-prefix)

" Lightline functions {{{
function! LightLineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction
function! LightLineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "\ue0a2"
  else
    return ""
  endif
endfunction
function! LightLineFugitive()
  if exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# "" ? "\ue0a0".branch : ""
  endif
  return ""
endfunction
function! LightLineFilename()
  return ('' != expand('%:t') ? expand('%:t') : '[No Name]')
endfunction
"}}}

" Use Deoplete  {{{
" let g:deoplete#enable_at_startup = 1
" if !exists('g:deoplete#omni#input_patterns')
  " let g:deoplete#omni#input_patterns = {}
" endif
" " let g:deoplete#disable_auto_complete = 1
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" let g:deoplete#disable_auto_complete = 1
" let g:deoplete#omni#sources={}
" let g:deoplete#omni#sources._=['buffer', 'file', 'ultisnips']
" }}}


" let g:onedark_termcolors = 256
" let g:onedark_terminal_italics = 1

" Golang Deoplete Settings {{{
" let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
" let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
" let g:deoplete#sources#go#use_cache = 1
 "}}}

" Golang {{{
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
" }}}

" vim-jedi
" let g:jedi#completions_enabled = 1
" autocmd BufWinEnter '__doc__' setlocal bufhidden=delete

" UltiSnips {{{
let g:UltiSnipsExpandTrigger='<c-Space>'
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my-snippets"]
" }}}
"
" Tern {{{
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete
"Add extra filetypes
let g:tern#filetypes = [
                \ 'js',
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ 'js.erb'
                \ ]
" Use tern_for_vim.
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
" }}}

" Supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

" NERDTree {{{
nnoremap <F8> :NERDTreeToggle<CR>
let g:nerdtree_tabs_autoclose = 1
let g:nerdtree_tabs_open_on_console_startup = 1
augroup NERDTREE
  " WIP
  function! CdAjdacentWindow()
  endfunction
augroup END
" }}}

"Tagbar
nnoremap <F9> :TagbarToggle<CR>

" Syntastic

" Autosave
" let g:auto_save = 1 " Enable autosave at startup
" let g:auto_save_in_insert_mode = 0  " do not save while in insert mode

" vim-clojure-static

" Hardmode {{{
" augroup hardmode
"     autocmd!
"     autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
" augroup END
" }}}
