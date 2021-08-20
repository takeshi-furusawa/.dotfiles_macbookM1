" --------------------------------------------------------------------------------
" Plugin manager(vim-plug) :

"  Reload .vimrc and
"     :PlugInstall/ :PlugClean /:PlugUpgrade
" --------------------------------------------------------------------------------
"Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'leafgarland/typescript-vim'                                                                                       

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-rooter'

call plug#end()

" --------------------------------------------------------------------------------
" for lightline.vim Plugin
" --------------------------------------------------------------------------------
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

