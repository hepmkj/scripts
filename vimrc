set number
syntax on
set hlsearch
set incsearch
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set smartindent
set cindent
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
fixdel
" fix backspace
set backspace=indent,eol,start
set ruler
filetype indent on

"color setting
highlight Normal ctermfg=black ctermbg=white
set cursorline
autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg
set cursorcolumn
autocmd InsertEnter * highlight CursorColumn ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
autocmd InsertLeave * highlight CursorColumn ctermfg=Black ctermbg=Yellow cterm=bold guifg=Black guibg=yellow gui=NONE
