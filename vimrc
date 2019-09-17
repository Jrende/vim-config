execute pathogen#infect()

""""""""""""""""""""""""""""""""""
" Syntax and indent
" """"""""""""""""""""""""""""""""""
syntax on " Turn on syntax highligthing
set showmatch  "Show matching bracets when text indicator is over them

" Switch on filetype detection and loads 
" indent file (indent.vim) for specific file types
filetype plugin indent on
set autoindent " Copy indent from the row above
set si " Smart indent

""""""""""""""""""""""""""""""""""
" Some other confy settings
""""""""""""""""""""""""""""""""""
" set nu " Number lines
set hls " highlight search
set lbr " linebreak

" Use 2 space instead of tab during format

set nocompatible
set encoding=utf-8
set expandtab
set hlsearch
set incsearch
set number
set shiftwidth=2
set shiftwidth=4
set smarttab
set softtabstop=0
set softtabstop=2
set tabstop=8

filetype indent plugin on
syntax on

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jscs', 'jshint']

let g:syntastic_cpp_checkers = []

"TODO: Think of something useful to map to Q
nnoremap Q <nop>

set selection=exclusive
" Visual selection automatically copied to clipboard
set go+=a

au BufNewFile,BufRead *.frag set filetype=glsl
au BufNewFile,BufRead *.vert set filetype=glsl

com! FormatJSON %!python -m json.tool

" Open nerdtree on start
autocmd vimenter * NERDTree
" Ctrl-n toggles nerdtree
map <C-n> :NERDTreeToggle<CR>
" Close vim if only window left open is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd vimenter * :wincmd l

set ballooneval
autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()

let mapleader = ","

nnoremap <leader>i :TsuImport<CR>
nnoremap <leader>g :TsuTypeDefinition<CR>
let g:tsuquyomi_single_quote_import=1

colorscheme koehler
let g:user_emmet_leader_key='<leader>'
let g:tsuquyomi_use_vimproc = 0
let g:tsuquyomi_disable_quickfix = 1
autocmd InsertLeave,TextChanged,BufWritePost *.ts,*.tsx call tsuquyomi#asyncGeterr()

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
\ }

