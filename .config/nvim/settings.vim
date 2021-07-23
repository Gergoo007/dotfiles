set mouse=a
set number
set splitright
set splitbelow
set background=dark
set ruler
set t_Co=256
set backspace=indent,eol,start
set showcmd
set laststatus=2

syntax enable

au! BufWritePost $MYVIMRC source %

if executable('clangd')
    augroup lsp_clangd
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
                    \ 'name': 'clangd',
                    \ 'cmd': {server_info->['clangd']},
                    \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
                    \ })
        autocmd FileType c setlocal omnifunc=lsp#complete
        autocmd FileType cpp setlocal omnifunc=lsp#complete
        autocmd FileType objc setlocal omnifunc=lsp#complete
        autocmd FileType objcpp setlocal omnifunc=lsp#complete
    augroup end
endif

let g:airline_powerline_fonts = 1
let g:airline_detect_paste = 1
let g:airline_theme = 'term'
let g:airline#extensions#tabline#enabled = 1

" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 1

