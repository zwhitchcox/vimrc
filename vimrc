" Nerd Tree
execute pathogen#infect()
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Persistent Undo
set undofile 
set undodir=~/.vim/undodir
" Style
set tabstop=2
set autoindent

" sjs
autocmd BufRead,BufNewFile *.sjs set syntax=javascript

" auto curly braces
inoremap { {<CR>}<Esc>ko<tab>


" Vundle
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
"call vundle#end()
"filetype plugin indent on 
