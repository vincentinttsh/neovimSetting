call plug#begin()
    Plug 'vim-airline/vim-airline'
    Plug 'rakr/vim-one'
    Plug 'tmhedberg/SimpylFold'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'kristijanhusak/defx-icons'
    Plug 'kristijanhusak/defx-git'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()

" for my mac
"let g:python3_host_prog="/Library/Frameworks/Python.framework/Versions/3.7/bin/python3"
if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
        set termguicolors
    endif
endif

" SimpylFold
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

set background=dark " for the dark version
colorscheme one
let g:airline_powerline_fonts = 1
" others
set nu cursorline
set tabstop=4 shiftwidth=4 expandtab

" defx 
call defx#custom#option('_', { 
    \ 'winwidth': 30,
    \ 'split': 'vertical',
    \ 'direction': 'topleft',
    \ 'show_ignored_files': 0,
    \ 'buffer_name': '',
    \ 'toggle': 1,
    \ 'resume': 1
    \ })
autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
    nnoremap <silent><buffer><expr> <CR>
        \ defx#is_directory() ? 
            \ defx#do_action('open_or_close_tree') : defx#do_action('multi', ['drop'])
    nnoremap <silent><buffer><expr> c
        \ defx#do_action('copy')
    nnoremap <silent><buffer><expr> m
        \ defx#do_action('move')
    nnoremap <silent><buffer><expr> p
        \ defx#do_action('paste')
    nnoremap <silent><buffer><expr> i
        \ defx#do_action('multi',[['drop','split']])
    nnoremap <silent><buffer><expr> K
        \ defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> N
        \ defx#do_action('new_file')
    nnoremap <silent><buffer><expr> d
        \ defx#do_action('remove')
    nnoremap <silent><buffer><expr> r
        \ defx#do_action('rename')
    nnoremap <silent><buffer><expr> yy
        \ defx#do_action('yank_path')
    nnoremap <silent><buffer><expr> . 
        \ defx#do_action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> <C-l>
        \ defx#do_action('redraw')
    nnoremap <silent><buffer><expr> <C-g>
        \ defx#do_action('print')
    nnoremap <silent><buffer><expr> q
        \ defx#do_action('quit')
endfunction
let mapleader = ","
nmap <silent> <Leader>e :Defx <cr>
nnoremap <silent> <Leader>a :<C-u>Defx -resume -buffer-name=tab`tabpagenr()` -search=`expand('%:p')`<CR>
