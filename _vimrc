set guifont=Menlo:h9 "Changing font
set guioptions-=T "No Toolbar
set linespace=5
set number
set clipboard=unnamed
set encoding=utf-8
let g:user_emmet_install_global = 1

"Opens NERDTree on startup
function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

nmap <F6> :NERDTreeToggle<CR>

"Removes Scrollbars
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

"NERDTree 3 files not readable error solving
let NERDTreeIgnore=['\c^ntuser\..*']
let NERDTreeIgnore = ['\.DAT$', '\.LOG1$', '\.LOG1$']

"Setting delimtMate : Plugin to auto close semicolon
so C:\Program Files (x86)\Vim\vim82\bundle\delimitMate\test\_setup.vim
let delimitMate_expand_cr = 1

"calling pathogen plugin manager
call pathogen#infect()
filetype plugin indent on
syntax on

"setting color scheme
set termguicolors
let ayucolor="mirage"
colorscheme ayu

"C/C++ intellisense
let g:C_UseTool_cmake    = 'yes'
let g:C_UseTool_doxygen  = 'yes'
