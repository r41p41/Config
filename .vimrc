syntax on

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'hewes/unite-gtags'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite-outline'
Plugin 'majutsushi/tagbar'
Plugin 'ironcamel/vim-script-runner'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on

set t_Co=256

set number
set binary
set shiftwidth=4
set tabstop=4

map <C-a> <Home>
map <C-e> <End>
imap <C-a> <Home>
imap <C-e> <End>
set ai
set hlsearch
set ruler
highlight Comment ctermfg=green

"set leader to \
let leader = "\\"

"for tab switching use \] and \[ \#
nmap <leader>c :tabedit<CR>
nmap <leader>] :tabnext<CR>
nmap <leader>[ :tabprevious<CR>
nmap <leader>1 1gt
nmap <leader>2 2gt
nmap <leader>3 3gt
nmap <leader>4 4gt
nmap <leader>5 5gt
nmap <leader>6 6gt
nmap <leader>7 7gt
nmap <leader>8 8gt
nmap <leader>9 9gt
if !exists('g:lasttab')
  let g:lasttab=1
endif
nmap <leader><leader> :exe "tabn".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


"config plugins
let g:script_runner_key = '<F9>'
nmap <leader>gl :NERDTreeToggle<CR>
nmap <leader>gf :TagbarToggle<CR>
nmap <leader>gd :Unite gtags/def:
nmap <leader>gr :Unite gtags/ref:
nmap <leader>gg :Unite grep<CR>
nmap <leader>gh :Unite outline<CR>
nmap <leader>gc :Unite output/shellcmd<CR>
let g:ctrl_map = 'C-p'
let g:ctrlp_max_files = 0

set foldmethod=indent
set foldlevel=99
nmap <space> za
match Ignore /\r$/
