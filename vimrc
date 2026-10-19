set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': {-> fzf#install() } }
Plug 'morhetz/gruvbox'
Plug 'andymass/vim-matchup'
call plug#end()

set encoding=utf-8
set number
set mouse=a
set hlsearch
set incsearch
set ignorecase
set smartcase
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set ruler
set wildmenu
set scrolloff=8
set noswapfile
set backspace=indent,eol,start
syntax on
set background=dark
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>),
  \   1, fzf#vim#with_preview(), <bang>0)

nnoremap <C-p> :Files<CR>
nnoremap <leader>fg :Rg<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap gd :ALEGoToDefinition<CR>
nnoremap gr :ALEFindReferences<CR>
nnoremap gh :ALEHover<CR>
let g:ale_completion_enabled=1
set omnifunc=ale#completion#omniFunc
