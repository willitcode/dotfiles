"       _                    
"      (_)                   
"__   ___ _ __ ___  _ __ ___ 
"\ \ / / | '_ ` _ \| '__/ __|
" \ V /| | | | | | | | | (__ 
"  \_/ |_|_| |_| |_|_|  \___|
"     (config for vim)

" Making vim use XDG dirs like any sensible application should
"set undodir=$XDG_DATA_HOME/vim/undo
"set directory=$XDG_DATA_HOME/vim/swap
"set backupdir=$XDG_DATA_HOME/vim/backup
"set viewdir=$XDG_DATA_HOME/vim/view
"set viminfo+='1000,n$XDG_DATA_HOME/vim/viminfo
"set runtimepath=$XDG_CONFIG_HOME/vim,$VIMRUNTIME,$XDG_CONFIG_HOME/vim/after

" Always use syntax highlighting
syntax on

" Always have line numbers
set number

" Plugins (vim-plug)
"call plug#begin('~/.config/vim/plugged')
"Plug 'vbe0201/vimdiscord'
"Plug 'junegunn/goyo.vim'
"call plug#end()

" Use four spaces instead of tabs
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Splits open on the bottom or right, unlike Vim's moronic defaults.
set splitbelow splitright

" tbh I have no clue how this works, but it disables stupid automatic continuing of comments on newlines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Set shortcuts to actually make sense
noremap ; l
noremap l k
noremap k j
noremap j h
