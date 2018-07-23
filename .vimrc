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
Plugin 'mxw/vim-jsx'
Plugin 'sheerun/vim-polyglot'
Plugin 'styled-components/vim-styled-components'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-sensible'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

" bling/vim-airline
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_highlighting_cache = 1
let g:airline_extensions = ['ctrlp']

" ctrlpvim/ctrlp.vim
let g:ctrlp_use_caching = 0
" Ignore files in .gitignore
" https://github.com/kien/ctrlp.vim/issues/273#issue-6692943
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" mxw/vim-jsx
" enable jsx even when extension isn't present
let g:jsx_ext_required = 0

" Enable Solarized theme
set background=dark
colorscheme solarized

" Enable syntax highlighting
syntax enable

" Give columns after 80th a background highlight
let &colorcolumn=join(range(81,999),",")

" Netrw settings
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_list_hide='\.coffee\.js$,\.coffee\.js\.map$,\.hbs\.js$,\.less\.css$,\.sw.$'

" Add line numbers
set number

" How often plugins should refresh, among other things
set updatetime=200

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
set showbreak=~~~~

" Ignore directories
set wildignore+=**/node_modules/*

" Ignore file types
set wildignore+=*.coffee.js,*.coffee.js.map,*.hbs.js,*.less.css,*.swp

" Ignore case in searches
set ignorecase

" Hides a file instead of closing it when opening another file, eliminating
" the requirement to save or undo your unsaved changes
set hidden

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
nmap <Leader>hr <Plug>GitGutterUndoHunk
nmap <Leader>ha <Plug>GitGutterStageHunk
