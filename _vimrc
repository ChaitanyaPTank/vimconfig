set nocompatible
set guifont=Fantasque_Sans_Mono:h13 "Changing font
set shell=powershell "Sets powershell as vim's shell
set shiftwidth=4
set tabstop=4
" set guifont=Menlo:h12 "set fonts to menlo
set guioptions-=T "No Toolbar
set linespace=4
set number
set clipboard=unnamed
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
let g:user_emmet_install_global = 1
set cursorline
"set fillchars+=vert:\|

" Vim Plug
call plug#begin('~/vimfiles/plugged')

Plug 'preservim/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kkoenig/wimproved.vim'
Plug 'tomtom/tcomment_vim'
Plug 'morhetz/gruvbox'
Plug 'ycm-core/YouCompleteMe'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'

call plug#end()
"
"trying to use gvim in full screen mode
"call libcallnr("gvimfullscreen_64.dll", "ToggleFullScreen", 1)

"mapping F11 to toggle full screen
map <F11> <Esc>:call libcallnr("gvimfullscreen_64.dll", "ToggleFullScreen", 0)<CR>

cd D:\Chaitanya\JavaScript\WebRefine\

"Opens NERDTree on startup
autocmd vimenter * NERDTree

function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

"Experimental
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'


nmap <C-n> :NERDTreeToggle<CR>
" nmap <C-f> :call libcallnr("gvimfullscreen_64.dll", \"ToggleFullScreen", 0)<CR> " this line conflicts with default bindings
nmap <C-c> :TComment<CR>
nmap <C-s> :w<CR>
set ruler

let &pythondll='C:\Windows\System32\python27.dll'

"Removes Scrollbars
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

"Saying nerdtree to ignore few files while scanning
let NERDTreeIgnore=['\c^ntuser\..*']
let NERDTreeIgnore = ['\.DAT$', '\.LOG1$', '\.LOG1$']

"Setting delimtMate : Plugin to auto close semicolon
so C:\Users\NEELKANTH\vimfiles\plugged\delimitMate\test\_setup.vim
let delimitMate_expand_cr = 1

"calling pathogen plugin manager
call pathogen#infect()
filetype plugin indent on
syntax on

"setting color scheme
"set termguicolors
"let ayucolor="mirage"
"colorscheme ayu

"gruvbox colorscheme
set bg=dark
let g:gruvbox_bold = '(1)'
let g:gruvbox_contrast_dark = '(soft)'
colorscheme gruvbox

"C/C++ intellisense
let g:C_UseTool_cmake    = 'yes'
let g:C_UseTool_doxygen  = 'yes'

" YouCompleteMe autoclose preview window
set completeopt-=preview

"Status line plugin
let g:airline#extensions#tabline#enabled = 1

"Sets transparency pf the window
autocmd GUIEnter * silent! WToggleClean
autocmd GUIEnter * silent! WSetAlpha 250
