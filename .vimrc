" Alex Zhang(Don't put anything in your .vimrc you don't understand!)
" :help [setting] is best friend.
" Colors {{{
syntax enable
colorscheme industry 
" }}}
" Spaces & Tabs {{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces,So <TAB> just becomes a shortcut for "insert four spaces".
set shiftwidth=4
filetype indent on
set modeline
" }}}
" UI Layout {{{
set number 
set relativenumber
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
" }}}
" Folding {{{
"=== folding ===
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
nnoremap <space> za
set foldlevelstart=10   " start with fold level of 1
" }}}
" Line Shortcuts {{{
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
" }}}
" Leader Shortcuts {{{
let mapleader=","
inoremap jk <esc>
nnoremap <leader>ee :vsplit $MYVIMRC<CR>
nnoremap <leader>ss :source $MYVIMRC<CR>
nnoremap <leader><space> :noh<CR>
" }}}
" Plugins {{{
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

call vundle#end()
" }}}
" vim: set foldmethod=marker foldlevel=0 :