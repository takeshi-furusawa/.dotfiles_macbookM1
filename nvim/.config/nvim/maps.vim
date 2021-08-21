" mapleader 
let mapleader = "\<Space>"
nnoremap <Leader>b :echo "Good"<Return>

"-----------------------------
" Tabs
"-----------------------------
" Open current directory

noremap te :tabedit<Return> 
noremap <Tab> :tabnext<Return>
noremap <S-Tab> :tabprev<Return>

"-------------------------------
" window
"-------------------------------
" Split window
nmap sv :vsplit<Return><C-w>w
nmap ss :split<Return><C-w>w

"" Move window
nmap s<left> <C-w>h
nmap sh <C-w>h

nmap s<up> <C-w>k
nmap sk <C-w>k

nmap s<down> <C-w>j
nmap sj <C-w>j

nmap s<right> <C-w>l
nmap sl <C-w>l

" -------------------------------
" others
" -------------------------------
" cursor always center after search
"nnoremap n nzzzv
"nnoremap N Nzzzv
nnoremap J mzJ'z
