" VIM Configuration File

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" disable vi compatibility
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent

" set tab width to 8 spaces
set tabstop=8
" set indent width to 8 spaces
set shiftwidth=8
" set tab and indent width of python files to 4 spaces
autocmd FileType python setlocal tabstop=4 shiftwidth=4
" set tab and indent with for yaml/yml files to 2 spaces
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2
" set tab and indent with for vim files to 2 spaces
autocmd FileType vim setlocal tabstop=2 shiftwidth=2

" wrap lines at 100 characters
set textwidth=100

" turn syntax highlighting on
set t_Co=256
syntax on
colorscheme wombat256mod

" turn line numbers on
set number
" highlight matching braces
set showmatch

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" disable spell check
set nospell
" highlight cursorline
set cursorline
" wrap long lines
set wrap
" dont wrap lines within a word
set linebreak

" highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" set cursor boundaries top/bottom to 15 lines
set so=15

" show possible completion of command after pressing TAB
set wildmenu
" list possibel completion of command after pressing TAB like ls
set wildmode=list:longest
set wildignore=*.pdf,*.png,*.pyc,/bin

" always show statusline
set laststatus=2
" set statusline
set statusline=\ %f%m%r%h%w\ %=%({%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y}%)\ %([%l,%v][%p%%]\ %)

" MAPPINGS
nnoremap <Space> <Nop>
let mapleader="\<Space>"
nnoremap <Leader>h :set invhls<CR>
nnoremap <Leader>O O<Esc>
nnoremap <Leader>o o<Esc>
