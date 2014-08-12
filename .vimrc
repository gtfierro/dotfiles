" Configuration file for vim
set modelines=0		" CVE-2007-2438
set term=screen-256color

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set backspace=2		" more powerful backspacing
set hidden
set ai			" auto indenting
set ruler		" show the cursor position
set ignorecase		" ignore case when searching
set smartcase
set noerrorbells	" don't make noise!
set wildmenu		" turn on command line completion wild style
set wildmode=list:longest,full
set number		" line numbers on
set tabstop=4		" tab length 4 spaces
set nowrap			" don't wrap lines
set expandtab		" use spaces, not tabs
set shiftwidth=2	"shift/tab width
set hlsearch	" highlight search items
set scrolloff=3	" have 3 lines above/below cursor
set nocompatible " fix arrow keys
set winminwidth=2 "min window width
set ttyfast "optimizes for fast terminal connections
"centralize backups/swapfiles
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set showmode "show current mode
set showcmd "show partial command

"for vim completion
set complete=.,b,u,]
set completeopt=menu,preview

let mapleader = ","
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>s :%!python -m json.tool<CR>
nnoremap <leader>q gqip
nnoremap <leader>v V`]
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>w :w !wc<CR>
nnoremap <leader>h :noh<CR>
noremap <leader>ss :call StripWhitespace()<CR>
noremap <leader>l :TlistToggle<CR>

imap jj <Esc>
imap JJ <Esc>
imap jJ <Esc>
imap Jj <Esc>
syntax on		" syntax highlighting
filetype plugin on	" use the file type plugings
set omnifunc=syntaxcomplete#Complete
" close omnifunc window automatically
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

set grepprg=grep\ -nH\ $* "grep generates file-name
let g:tex_flavor='latex'

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup

" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

" Strip trailing whitespace (,ss)
function! StripWhitespace()
 	let save_cursor = getpos(".")
 		let old_query = getreg('/')
		:%s/\s\+$//e
		call setpos('.', save_cursor)
		call setreg('/', old_query)
endfunction

"settings for Powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2
set fillchars+=stl:\ ,stlnc:\
set encoding=utf-8

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

"hopefully this allows me to copy to system clipboard
" ctrl-x for cut
vmap <C-x> :!pbcopy<cr>
" ctrl-c for copy
vmap <C-c> :w !pbcopy<cr><cr>

"
"ctl-o inserts newline w/o insert mode
nmap <C-o> o<Esc>

set t_Co=256
set background=dark
colorscheme solarized
let g:solarized_termcolors=1
let g:gitgutter_enabled=1
highlight clear SignColumn

"setup pathogen
call pathogen#infect()
