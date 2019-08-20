syntax on

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'hewes/unite-gtags'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/unite-outline'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'osyo-manga/unite-quickfix'
Plugin 'tpope/vim-surround'

call vundle#end()
filetype plugin indent on

set t_Co=256

set number
set binary
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
nmap <leader>' :tabedit<CR>
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
nmap <leader>gl :NERDTreeToggle<CR>
nmap <leader>gf :TagbarToggle<CR>
nmap <leader>gd :Unite gtags/def:
nmap <leader>gr :Unite gtags/ref:
nmap <leader>gg :Unite gtags/grep:
nmap <leader>gh :Unite outline<CR>
nmap <leader>gc :Unite output/shellcmd<CR>
nmap <leader>go :Unite output<CR>
nmap <leader>gb :Gblame<CR>

function! AsyncSwitch()
	AsyncStop
	Unite quickfix
	cclose
endfunction

"experimental
function! AGrepf()
	let cmd = input("filename regex : ")
	execute "AsyncRun -strip for f in `ag -g ".cmd."`; do echo $f\"|1|   \"; done"
endfunction

let g:asyncrun_status = ''
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
let unite_quickfix_filename_is_pathshorten = 0
let g:asyncrun_open=16

nmap <leader>c :AsyncRun 
nmap <leader>f :Unite line<CR>
nmap <leader>l :Unite buffer file<CR>
nmap <leader>h :Unite history/unite<CR>
nmap <leader>j :Unite jump<CR>
nmap <leader>s :call AsyncSwitch()<CR>
nmap <leader>ag :AsyncRun ag 
nmap <leader>af :call AGrepf()<CR>

nmap <leader>n :cn<CR>
nmap <leader>p :cp<CR>

nmap <backspace> :UniteResume<CR>

"quickfixsearch with g/<pattern>/caddexpr expand("%") . ":" . line(".") . ":" . getline(".")
"or use vimgrep <pattern> %
"copen, cclose, cexpr [] (clear)

set foldmethod=indent
set foldlevel=99
nmap <space> za
match Ignore /\r$/

if executable('ag')
  let g:unite_source_grep_command='ag'
  let g:unite_source_grep_default_opts='--nocolor --nogroup -S -C4'
  let g:unite_source_grep_recursive_opt=''
endif
