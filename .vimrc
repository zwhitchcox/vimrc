" Nerd Tree
execute pathogen#infect()

map <C-e> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeDirArrows=0

inoremap {<Tab> {<CR>}<Esc>O<Tab>
inoremap [<Tab> [<CR>]<Esc>O<Tab>
inoremap (<Tab> ()<Left>
inoremap <C-u> <Esc>O<Tab>
inoremap <C-h> <Esc>jo

imap <C-p> <C-n>
map <C-A-w> <C-w>

scriptencoding utf-8
set encoding=utf-8

" Persistent Undo
set undofile 
set undodir=~/.vim/undodir

" multiple cursors
nnoremap <C-k> :call multiple_cursors#new('v',0)<CR>
vnoremap <C-k> :call multiple_cursors#new('v',0)<CR>

" preferences
set tabstop=2
set autoindent
set nu
set shiftwidth=2

set noswapfile

" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif
