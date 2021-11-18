set nocompatible
filetype off

" dense-analysis/ale
" Enable completion where available
" This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1

" vim-plug
call plug#begin(stdpath('data') . '/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'leafgarland/typescript-vim'
Plug 'luochen1990/rainbow'
Plug 'mxw/vim-jsx'
Plug 'styled-components/vim-styled-components'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'wlangstroth/vim-racket'

call plug#end()

let mapleader=','

" airblade/vim-gitgutter
nmap <Leader>hr <Plug>(GitGutterUndoHunk)

" dense-analysis/ale
" Turn off highlights
let g:ale_set_highlights = 0
nmap <Leader>g :ALEGoToDefinition<return>
nmap <Leader>r :ALEFindReferences<return>
nmap <Leader>t :ALEHover<return>
nmap <Leader>f :ALEFix<return>
nmap <Leader>e :ALEDetail<return>
nmap <Leader>w :ALERename<return>
nmap ]e <Plug>(ale_next_wrap)
nmap [e <Plug>(ale_previous_wrap)
let g:ale_fixers = {
  \'typescript': ['prettier', 'eslint'],
  \'typescriptreact': ['prettier', 'eslint'],
  \'javascript': ['prettier', 'eslint'],
\}

" junegunn/fzf.vim
nmap <C-p> :Files<return>
let $FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude dist'

" mxw/vim-jsx
" enable jsx even when extension isn't present
let g:jsx_ext_required = 0

" Enable syntax highlighting
syntax enable

" Netrw settings
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_list_hide='\.coffee\.js$,\.coffee\.js\.map$,\.hbs\.js$,\.less\.css$,\.sw.$'

" Disable search highlighting
set nohlsearch

" Add line numbers
set number

" Show whitespace
set listchars=tab:--,trail:~,extends:>,precedes:<
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

" Make sure vim-gitgutter refreshes are timely without save
set updatetime=200

" Mappings
map <Leader>3 :e#<return>
map <Leader>E :Ex<return>
map <Leader>p :bp<return>
map <Leader>n :bn<return>
map <Leader>d :bd<return>
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h
