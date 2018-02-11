" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'groenewege/vim-less'
Plugin 'mxw/vim-jsx'
Plugin 'rking/ag.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'ternjs/tern_for_vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

" bling/vim-airline
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" ctrlpvim/ctrlp.vim
let g:ctrlp_user_command = 'ag %s -l -g ""'
let g:ctrlp_use_caching = 0

" enable jsx even when extension isn't present
let g:jsx_ext_required = 0

" Enable Solarized theme
set background=dark
colorscheme solarized

" Enable syntax highlighting
syntax enable

" Give columns after 80th a background highlight
let &colorcolumn=join(range(81,999),",")

" Add line numbers
set number

" Netrw settings
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_list_hide='\.coffee\.js$,\.coffee\.js\.map$,\.hbs\.js$,\.less\.css$,\.sw.$'

" Show whitespace
set listchars=eol:$,tab:--,trail:~,extends:>,precedes:<
set list

" Show current line
set cursorline

" Tabs and indents
set tabstop=2
set shiftwidth=2
set expandtab
filetype plugin indent on
set breakindent
set showbreak=---\|

" Hides a file instead of closing it when opening another file, eliminating
" the requirement to save or undo your unsaved changes
set hidden

" Automatically refresh files
set autoread

" Mappings
let mapleader=','
map <Leader>3 :e#<return>
map <Leader>E :Ex<return>
map <Leader>e :e **/
map <Leader>p :bp<return>
map <Leader>n :bn<return>
map <Leader>d :bd<return>
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h
" Tern
map <Leader>t TernDef<return>

" Ignore directories
set wildignore+=**/node_modules/*
" Ignore file types
set wildignore+=*.coffee.js,*.coffee.js.map,*.hbs.js,*.less.css,*.swp
set ignorecase

" Turn off sql autocomplete on cntrl-c
let g:omni_sql_no_default_maps = 1
