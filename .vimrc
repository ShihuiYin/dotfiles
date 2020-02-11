" For Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vhda/verilog_systemverilog.vim'
"Plugin 'tarikgraba/vim-liberty'
Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'
call vundle#end()            " required
filetype plugin indent on    " required

set clipboard=unnamed
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set backspace=indent,eol,start

" key mapping
inoremap <C-j> <Esc>:w<CR>
inoremap <C-k> <Esc>:x<CR>
inoremap <C-l> <End>
inoremap <C-f> <C-x><C-f>
nnoremap q :q<CR>
nnoremap f :w<CR>
nnoremap <C-l> <End>
nnoremap <C-h> <home>
nnoremap <C-i> :s/\([0-9a-zA-Z_]\+\),/\.\1(\1),/g <CR> <C-j>
nnoremap <C-u> :s/,/;/g <CR> <C-j>
nnoremap <C-t> <C-]>
nnoremap ul :UltiSnipsEdit<CR>
nnoremap sf :syntax off<CR>
nnoremap so :syntax on<CR>
nnoremap vs :vsplit<CR>
nnoremap hs :split<CR>
nnoremap wl <C-w>l
nnoremap wh <C-w>h
nnoremap wj <C-w>j
nnoremap wk <C-w>k
nnoremap wz :tabedit %<CR>
nnoremap wo :tabclose<CR>
nnoremap rl :e<CR>
nnoremap <C-r> :! cd %:p:h; python %<CR>
nnoremap O o<Esc>:w<CR>


highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red
highlight Folded guibg=NONE
highlight Directory cterm=bold

set foldmethod=indent
set foldlevel=20

let &pythonthreedll = "/home/syin11/miniconda3/lib/libpython3.6m.so"

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-r>"
let g:UltiSnipsEditSplit="vertical"
let g:verilog_syntax_fold_lst = "all"

" auto make view and load view when exit and load a file
" au BufWinLeave * mkview
" au BufWinEnter * silent loadview


syntax on
set ruler
set tags=tags
