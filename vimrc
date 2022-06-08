" Prereq
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Plugins
call plug#begin()
"Plug 'tabnine/YouCompleteMe'
Plug 'rust-lang/rust.vim'
Plug 'sonph/onehalf', {'rtp': 'vim' }
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'vim-syntastic/syntastic'
"Plug 'vbe0201/vimdiscord' 
call plug#end()
syntax enable
filetype plugin indent on 
set number
set autoindent
"colorscheme onehalfdark
let g:gruvbox_contrast_dark = 'soft' 
autocmd vimenter * ++nested colorscheme gruvbox 
set bg=dark 
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set t_Co=256
set showtabline=2
" Completion highlighting
highlight Pmenu ctermbg=white
highlight PmenuSel ctermbg=gray
highlight PmenuSbar ctermbg=gray
" Cursor stuff
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
set ttimeout
set ttimeoutlen=1
set ttyfast
