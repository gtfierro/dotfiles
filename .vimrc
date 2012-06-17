" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set ai			" auto indenting
set ruler		" show the cursor position
set ignorecase		" ignore case when searching
set smartcase
set noerrorbells	" don't make noise!
set wildmenu		" turn on command line completion wild style
set wildmode=list:longest,full 
set number		" line numbers on
set tabstop=2		" tab length 4 spaces
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
map <C-l> :TlistToggle
map <C-n> :NERDtree
map <C-m> :NERDtreeClose
imap jj <Esc>
syntax on		" syntax highlighting
filetype plugin on	" use the file type plugings
set grepprg=grep\ -nH\ $* "grep generates file-name
filetype indent on
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

noremap <leader>ss :call StripWhitespace()<CR>

"hopefully this allows me to copy to system clipboard
" ctrl-x for cut
vmap <C-x> :!pbcopy<cr>
" ctrl-c for copy
vmap <C-c> :w !pbcopy<cr><cr>

"setup pathogen
call pathogen#infect()
