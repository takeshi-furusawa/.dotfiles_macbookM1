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
Plug 'junegunn/fzf.vim'
"Plug 'airblade/vim-rooter'

Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
                                                                                                                 
" Stable version of coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" colorizer[lua]
Plug 'norcalli/nvim-colorizer.lua'


call plug#end()

" --------------------------------------------------------------------------------
" for lightline.vim Plugin                                                         
" --------------------------------------------------------------------------------
let g:lightline = {                                                         
      \ 'colorscheme': 'one',                                                         
      \ }                                                         
                                                         
