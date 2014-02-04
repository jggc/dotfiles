set nu
set autoindent
set nocompatible
set background=dark
set vb " To disable system beep - vim screen flashes instead
syntax on

filetype plugin indent on
" Mini code snippets that I find suitable for any kind of editing.
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap [	[]<Left>

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

" Some plugins
call vundle#rc()
Bundle 'tpope/vim-vividchalk'
Bundle 'vim-scripts/WuYe'
Bundle 'vim-scripts/javacomplete'
Bundle 'vim-scripts/AutoComplPop'

" autocmd FileType java set omnifunc=javacomplete#Complete
set omnifunc=syntaxcomplete#Complete " Awesome simple builtin completion

" colorscheme vividchalk
colorscheme desert

" For simple highlight over 80 characters
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB
