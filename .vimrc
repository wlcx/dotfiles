set nocp
set ruler wmnu
set ls=2          " always show statusbar
syntax enable
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set backspace=indent,eol,start
set background=dark
set nu
set relativenumber

" I wonder how long it'll take me to regret this!!
" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

call plug#begin()

Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'fatih/vim-go'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-unimpaired'
Plug 'sickill/vim-monokai'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'tpope/vim-surround'
Plug 'xsbeats/vim-blade'
Plug 'Tpope/vim-obsession'
Plug 'groenewege/vim-less'
Plug 'jaxbot/browserlink.vim'
Plug 'rust-lang/rust.vim'
Plug 'leafgarland/typescript-vim'
Plug 'neomake/neomake'
Plug 'mileszs/ack.vim'
Plug 'airblade/vim-gitgutter'

call plug#end()

filetype plugin indent on
colorscheme monokai

map <C-n> :NERDTreeToggle<CR>

let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*/app/storage/*
set wildignore+=*/vendor/*
set wildignore+=*/node_modules/*

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:go_fmt_command = "goimports"
let g:rustfmt_autosave = 1

call neomake#configure#automake('nrwi', 500)

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>re <Plug>(go-rename)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>gc <Plug>(go-doc)
au FileType go nmap <leader>gd <Plug>(go-def)
au FileType go nmap <leader>gv <Plug>(go-doc-vertical)

au FileType rust nmap <Leader>r :RustRun<cr>
au FileType rust nmap <Leader>t :RustTest<cr>

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
