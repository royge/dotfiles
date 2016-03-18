call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/DirDiff.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'garyburd/go-explorer'
Plug 'yegappan/grep'
Plug 'nanotech/jellybeans.vim'
Plug 'Shutnik/jshint2.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'joonty/vdebug'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'sukima/xmledit'
Plug 'mileszs/ack.vim'
Plug 'plasticboy/vim-markdown'
Plug 'majutsushi/tagbar'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'evidens/vim-twig'
call plug#end()

" execute pathogen#infect()
" call pathogen#helptags()

" Smart way to move between windows
no <C-j> <C-W>j
no <C-k> <C-W>k
no <C-h> <C-W>h
no <C-l> <C-W>l

" My colors
color jellybeans

syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
" Disable arrow keys to avoid the bad habbit of using it.
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

no <leader>n :NERDTreeToggle<cr>
no <leader>p :CtrlP<cr>
no <leader>. :CtrlPTag<cr>
nmap <F8> :TagbarToggle<CR>

map <leader>+ <C-W>_<C-W><Bar>
map <leader>= <C-W>=

set mouse=a
set nowrap

let g:acp_enableAtStartup = 0
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
autocmd CompleteDone * pclose

set list listchars=tab:\›\ ,trail:-,extends:>,precedes:<,eol:¬
set runtimepath^=~/.config/nvim/plugged/ctrlp.vim
set pastetoggle=<F2>
hi default DbgBreakptLine term=reverse ctermfg=White ctermbg=DarkGreen guifg=#ffffff guibg=#003300
hi default DbgBreakptSign term=reverse ctermfg=White ctermbg=DarkGreen guifg=#ffffff guibg=#003300

" JSHint
let jshint2_read = 1
let jshint2_save = 1
let jshint2_close = 0
let jshint2_color = 0
let jshint2_error = 0
let jshint2_min_height = 3
let jshint2_max_height = 12

" PHP CS Fixer
" If php-cs-fixer is in $PATH, you don't need to define line below
" let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_level = "symfony"              " which level ?
let g:php_cs_fixer_config = "default"             " configuration
let g:php_cs_fixer_php_path = "php"               " Path to PHP
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.

" Grep configurations
let Grep_Skip_Dirs = ".git"
let Grep_Skip_Files = "*.swp *.min.js"
nnoremap <silent> <F3> :Rgrep<CR>

" Set the vertical split character to  a space (there is a single space after '\ ')
let NERDTreeIgnore=['static$[[dir]]', '.pyc$[[file]]']
:set fillchars+=vert:\ 
