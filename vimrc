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
set nu

" sjs
autocmd BufRead,BufNewFile *.sjs   set syntax=javascript
autocmd BufRead,BufNewFile *.marko set syntax=html

" auto curly braces
inoremap { {<CR>}<Esc>ko<tab>

" Vundle
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
"call vundle#end()
"filetype plugin indent on 

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

Plugin 'honza/vim-snippets'
