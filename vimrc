" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on

nnoremap <F5> :GundoToggle<CR>
nnoremap <F6> :NERDTreeToggle<CR>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

colorscheme desert

" recognise files
filetype on
filetype plugin on
filetype indent on

" syntax
syntax enable

" ruler
set ruler

" indentation
set autoindent
set smartindent

" tab setup
set tabstop=4
set shiftwidth=4

" don't expand
set noexpandtab

" nope to vi
set nocompatible

" Temp files? do not want
set nobackup
set noswapfile

" show matching braces
set showmatch

" searching
set hlsearch
set incsearch

" some extras

" line numbers
map <C-l> :set number!<CR>

" Turn off toolbar
set guioptions-=T

" sensible backspace
set backspace=2

nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

set textwidth=99
set fo-=t

setlocal spell spelllang=en_gb
set nospell
map <C-s> :set spell!<CR>

au BufNewFile,BufRead *.ggl setlocal ft=lua
au BufNewFile,BufRead *.ggl.in setlocal ft=lua
au Syntax ggl source $vimruntime/syntax/lua.vim
au Syntax gglsrc source $VIMRUNTIME/syntax/lua.vim

" Alert when we get too long
highlight WarnLength ctermbg=darkred ctermfg=white guibg=#773333
match WarnLength /\%>99v.\+/

" Highlight mismatches as bad
highlight BadWhitespace ctermbg=red guibg=red
" Warn about any trailing whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set hls!
set number
" set autochdir
set hidden

nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j


set statusline+=%F
set laststatus=2
hi StatusLine ctermfg=black ctermbg=white
