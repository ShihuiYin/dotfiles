" For Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vhda/verilog_systemverilog.vim'
call vundle#end()            " required
filetype plugin indent on    " required

set clipboard=unnamedplus
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
inoremap <C-j> <Esc>:w<CR>
inoremap <C-k> <Esc>:x<CR>
inoremap <C-l> <End>
nnoremap q :q<CR>
nnoremap f :w<CR>
nnoremap <C-l> <End>
nnoremap <C-h> <home>
" autocmd BufNewFile,BufRead *.v,*sv set syntax=verilog
nnoremap <C-i> :s/\([0-9a-zA-Z_]\+\),/\.\1(\1),/g <CR> <C-j>
nnoremap <C-u> :s/,/;/g <CR> <C-j>
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red
highlight Folded guibg=NONE

set foldmethod=syntax
let g:verilog_syntax_fold_lst = "all"
set foldlevel=1
