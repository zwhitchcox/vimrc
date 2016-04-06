" Nerd Tree
execute pathogen#infect()

map <C-e> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeDirArrows=0

inoremap {<Tab> {}<Left>
inoremap {<Tab><Tab> {<CR>}<Esc>O<Tab>
inoremap [<Tab> []<Left>
inoremap [<Tab><Tab> [<CR>]<Esc>O<Tab>
inoremap (<Tab> ()<Left>
inoremap (<Tab><Tab> (<CR>)<Esc>O<Tab>
inoremap <C-u> <Esc>O<Tab>
inoremap <C-h> <Esc>jA

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

imap <C-p> <C-n>
map <C-A-w> <C-w>

" Persistent Undo
set undofile 
set undodir=~/.vim/undodir

filetype plugin on
set omnifunc=syntaxcomplete#Complete
inoremap </<Space> </<C-X><C-O>
inoremap </<Tab> </<C-X><C-O><Esc>F<i
inoremap </<Tab><Tab> </<C-X><C-O><Esc>F<i<CR><Esc>O<Tab>

" preferences
set tabstop=2
set autoindent
set nu
set shiftwidth=2
set expandtab
set backspace=2
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

syntax on
