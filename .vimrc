set nocp
set ruler wmnu
set ls=2          " always show statusbar
syntax on
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set backspace=indent,eol,start
set background=dark
set nu

call plug#begin()

Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'fatih/vim-go'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-unimpaired'
Plug 'altercation/vim-colors-solarized'
Plug 'sickill/vim-monokai'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'tpope/vim-surround'
Plug 'xsbeats/vim-blade'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'Tpope/vim-obsession'
Plug 'groenewege/vim-less'
Plug 'jaxbot/browserlink.vim'
Plug 'rust-lang/rust.vim'
Plug 'leafgarland/typescript-vim'

call plug#end()

map <C-n> :NERDTreeToggle<CR>
colorscheme monokai

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/app/storage/*
set wildignore+=*/vendor/*
set wildignore+=*/node_modules/*
let g:syntastic_php_phpcs_args='--standard=psr2'
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck', 'go']

let g:go_fmt_command = "goimports"
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <Leader>gc <Plug>(go-doc)
au FileType go nmap <Leader>gd <Plug>(go-def)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
