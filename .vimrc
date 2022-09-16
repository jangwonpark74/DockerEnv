set nocompatible
set laststatus=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=120
set expandtab
set smartindent
set autoindent
set fileformat=unix
set ruler
set encoding=utf-8
set backspace=indent,eol,start
"set number
set tags=tags
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'fatih/molokai'
Plugin 'ronakg/quickr-cscope.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'jiangmiao/auto-pairs'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'hynek/vim-python-pep8-indent'
call vundle#end()
" go path configuration
let g:go_bin_path="/opt/homebrew/bin"
" gopls setup
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
" vim-go setup
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_fmt_fail_silently = 1
let g:rehash256 = 1
let g:go_auto_type_info=1

let g:tagbar_width= 50
colorscheme molokai
set t_Co=256
let g:molokai_original =1
set updatetime=100

let mapleader = ","
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <leader>c <Plug>(go-coverage-toggle)
autocmd FileType go nmap <leader>e <Plug>(go-rename)
autocmd FileType go nmap <leader>s <Plug>(go-implements)
autocmd FileType go nmap <leader>i <Plug>(go-info)
autocmd FileType go nmap <leader>ds <Plug>(go-def-split)
autocmd FileType go nmap <leader>dv <Plug>(go-def-vertical)

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
    let l:file = expand('%')
    if l:file =~# '^\f\+_test\.go$'
        call go#test#Test(0, 1)
    elseif l:file=~# '^\f\+\.go$'
        call go#cmd#Build(0)
    endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

"tagbar toggle

filetype plugin indent on

"enable all Python syntax highlighting features
"let python_highlight_all=1
syntax on
" Tag configuration
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>
