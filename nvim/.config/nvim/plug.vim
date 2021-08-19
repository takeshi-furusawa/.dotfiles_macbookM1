" --------------------------------------------------------------------------------
" Plugin manager(vim-plug) :

"  Reload .vimrc and
"     :PlugInstall/ :PlugClean /:PlugUpgrade
" --------------------------------------------------------------------------------
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'leafgarland/typescript-vim'                                                                                       

Plug 'junegunn/fzf'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-rooter'

call plug#end()

" --------------------------------------------------------------------------------
" for lightline.vim Plugin
" --------------------------------------------------------------------------------
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

