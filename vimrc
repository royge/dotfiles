call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/DirDiff.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/grep.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'Shutnik/jshint2.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'sukima/xmledit'
Plug 'mileszs/ack.vim'
Plug 'plasticboy/vim-markdown'
Plug 'majutsushi/tagbar'
Plug 'Valloric/YouCompleteMe'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'mxw/vim-jsx'
Plug 'davidhalter/jedi-vim'
Plug 'craigemery/vim-autotag'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/SQLUtilities'
Plug 'miyakogi/seiya.vim'
" If installed using Homebrew
Plug '/usr/local/opt/fzf'
Plug 'pangloss/vim-javascript'
Plug 'leshill/vim-json'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'moll/vim-node'
Plug 'groenewege/vim-less'
Plug 'ternjs/tern_for_vim'
Plug 'johngrib/vim-game-code-break'
Plug 'chr4/nginx.vim'
Plug 'pearofducks/ansible-vim'
Plug 'lepture/vim-jinja'
Plug 'guileen/vim-node-dict'
Plug 'jelera/vim-javascript-syntax'
Plug 'myhere/vim-nodejs-complete'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'junegunn/vim-easy-align'
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'hashivim/vim-terraform'
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
" let g:monochrome_italic_comments = 1
" colorscheme monochrome

let python_highlight_all=1

syntax on

filetype plugin indent on

" Allow .vimrc overrides on project directory
set exrc

set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set expandtab
set fileformat=unix

au BufNewFile,BufRead *.py
    \ set textwidth=79 |

au BufNewFile,BufRead *.go
    \ set textwidth=79 |
    \ set noexpandtab |

au BufNewFile,BufRead *.tf
  \ set tabstop=2 |
  \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |

au BufNewFile,BufRead *.js
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

au BufNewFile,BufRead *.yml
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

au BufNewFile,BufRead *.yaml
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

au BufNewFile,BufRead *.md
    \ set textwidth=79 |

au BufNewFile,BufRead *.dart
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

set number

" Map escape
:imap jk <Esc>

" UTF8 support
set encoding=utf-8

set clipboard=unnamed

"if $TMUX == ''
"    set clipboard+=unnamed
"endif

" Disable arrow keys to avoid the bad habbit of using it.
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

no <leader>N :NERDTreeToggle<cr>
nmap <F8> :TagbarToggle<CR>

map <leader>+ <C-W>_<C-W><Bar>
map <leader>= <C-W>=

set mouse=
set nowrap

let g:acp_enableAtStartup = 0
autocmd CompleteDone * pclose

set list listchars=tab:\›\ ,trail:-,extends:>,precedes:<,eol:¬
set pastetoggle=<F2>
hi default DbgBreakptLine term=reverse ctermfg=White ctermbg=DarkGreen guifg=#ffffff guibg=#003300
hi default DbgBreakptSign term=reverse ctermfg=White ctermbg=DarkGreen guifg=#ffffff guibg=#003300

let g:syntastic_go_checkers = ['golangci_lint']
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

" JSHint
let jshint2_read = 1
let jshint2_save = 1
let jshint2_close = 0
let jshint2_color = 0
let jshint2_error = 0
let jshint2_min_height = 3
let jshint2_max_height = 12

" YCM
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_auto_hover = ''
let s:enable_hover = 0
let s:cursorhold_popup = -1

" tern
map <leader>j  :TernDef<CR>
map <leader>jr  :TernRefs<CR>
map <leader>jd  :TernDoc<CR>
map <leader>jt  :TernType<CR>
map <leader>jn  :TernRename<CR>

" Grep configurations
let Grep_Skip_Dirs = ".git"
let Grep_Skip_Files = "*.swp *.min.js"
nnoremap <silent> <F3> :Rgrep<CR>

" Set the vertical split character to  a space (there is a single space after '\ ')
"let NERDTreeIgnore=['static$[[dir]]', '.pyc$[[file]]']
let NERDTreeIgnore=['.pyc$[[file]]', '.retry$[[file]]']
:set fillchars+=vert:\ 

" JSX configurations.
let g:jsx_ext_required = 0
set tags=./tags,tags;$HOME

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" SimpylFold
let g:SimpylFold_docstring_preview=1

" User powerline fonts
let g:airline_powerline_fonts = 1

" Transparent vim
let g:seiya_auto_enable = 1

let g:javascript_plugin_flow = 1

"enable keyboard shortcuts
let g:tern_map_keys=1
"show argument hints
let g:tern_show_argument_hints='on_hold'

"FZF mappings
nmap ; :Buffers<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>t :Tags<CR>
nmap <C-p> :Files<CR>

"vim-node-dict
au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict

"vim-nodejs-complete
let g:nodejs_complete_config = {
\  'js_compl_fn': 'jscomplete#CompleteJS',
\  'max_node_compl_len': 15
\}

"spell check
autocmd FileType mail setlocal spell spelllang=en_us
autocmd BufRead COMMIT_EDITMSG setlocal spell spelllang=en_us
autocmd BufNewFile,BufRead *.md,*.mkd,*.markdown set spell spelllang=en_us

set secure

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Dart related configurations.
let g:loaded_syntastic_dart_dartanalyzer_checker = 1
let dart_format_on_save = 1
let dart_html_in_string=v:true
let g:dart_style_guide = 2

let g:lsc_auto_map = v:true

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_metalinter_command='golangci-lint'
let g:go_rename_command='gopls'
let g:go_fmt_autosave = 0

" Terraform
let g:terraform_align=1
