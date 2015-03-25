set nu
set nocompatible
set background=dark
set vb " To disable system beep - vim screen flashes instead
set shell=bash " On fish, Vundle does not work
syntax on

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" Some plugins
call vundle#begin()
" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-vividchalk'
Plugin 'vim-scripts/WuYe'
Plugin 'Valloric/YouCompleteMe'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/html5.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'

call vundle#end()

filetype plugin indent on
" Mini code snippets that I find suitable for any kind of editing.
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap [      []<Left>
inoremap []     []

" Shortcut for translations in JSF files
inoremap <C-s>	#{tr.t("")}<Esc>hhi 

" For easier browsing between splits
nnoremap <C-l>	<C-w>l
nnoremap <C-k>	<C-w>k
nnoremap <C-j>	<C-w>j
nnoremap <C-h>	<C-w>h
"inoremap <C-l>	<Esc><C-w>l
"inoremap <C-k>	<Esc><C-w>k
"inoremap <C-j>	<Esc><C-w>j
"inoremap <C-h>	<Esc><C-w>h

" For easier tabs browsing
nnoremap <C-n>	:tabn<CR>
nnoremap <C-p>	:tabp<CR>

" For easier buffer browsing
nnoremap <F12>	:bnext<CR>
nnoremap <S-F12>	:bprevious<CR>


" Comment 
vnoremap <C-c>	c//<Tab><Esc>



" autochdir helps for filename completion
set autochdir

" autocmd FileType java set omnifunc=javacomplete#Complete
set omnifunc=syntaxcomplete#Complete " Awesome simple builtin completion

" colorscheme vividchalk
colorscheme desert

" For simple highlight over 80 characters
"highlight OverLength ctermbg=black guibg=black
"match OverLength /\%81v.\+/

set expandtab ts=4 sw=4 ai " set tabs to 4 spaces

set backupdir=/home/jgcouture/.vim/backup
set directory=/home/jgcouture/.vim/backup

set shell=/bin/bash
