" Alex Zhang(Don't put anything in your .vimrc you don't understand!)
" :help [setting] is best friend.
" Syntax of the vim lang is verb+noun.
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
" Searching {{{
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase
nnoremap <leader><space> :nohlsearch<CR>
" }}}
" Windows & Tabs {{{
" Moving between windows
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

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
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'kana/vim-textobj-user' 
Plugin 'kana/vim-textobj-line'
Plugin 'mjbrownie/django-template-textobjects'
Plugin 'mattn/emmet-vim'
Plugin 'shime/vim-livedown'

Plugin 'preservim/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/fzf.vim'

Plugin 'ycm-core/YouCompleteMe'
call vundle#end()
" }}}
" Plugins Setting {{{
" Nerdtree setting
noremap <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif          "close vim if the only window left open is a NERDTree
" Youcompleteme setting
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
noremap <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" Emmet setting
let g:user_emmet_leader_key=','
" Livedown setting
nnoremap gp :LivedownToggle<CR>
let g:livedown_open = 1   " should the browser window pop-up upon previewing 
let g:livedown_autorun = 1 " should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_port = 1337 
let g:livedown_browser = "firefox"
" }}}
" vim: set foldmethod=marker foldlevel=0 :

