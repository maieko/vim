" vim: nowrap fdm=marker
"  ---------------------------------------------------------------------------
"  NeoBundle
"  ---------------------------------------------------------------------------
silent! runtime bundles.vim

"  ---------------------------------------------------------------------------
"  General
"  ---------------------------------------------------------------------------

filetype plugin indent on
let mapleader = ","
let g:mapleader = ","
set modelines=0
set history=10000
set nobackup
set nowritebackup
set noswapfile
syntax enable
set autoread
set shell=/bin/sh
set backupdir=~/tmp,/tmp
set undodir=~/.vim/.tmp,~/tmp,~/.tmp,/tmp

"  ---------------------------------------------------------------------------
"  UI
"  ---------------------------------------------------------------------------

set title
set encoding=utf-8
set scrolloff=3
set autoindent
set smartindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
set relativenumber
set undofile

" Auto adjust window sizes when they become current
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

set splitbelow splitright

if has('mouse')
  set mouse=a
endif

"  ---------------------------------------------------------------------------
"  Text Formatting
"  ---------------------------------------------------------------------------

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set nowrap
set textwidth=79
set formatoptions=n

" check to make sure vim has been compiled with colorcolumn support
" before enabling it
if exists("+colorcolumn")
  set colorcolumn=80
endif

"  ---------------------------------------------------------------------------
"  Mappings
"  ---------------------------------------------------------------------------

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Switch between buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
vnoremap <C-c> "+y



"  ---------------------------------------------------------------------------
"  Plugins
"  ---------------------------------------------------------------------------

runtime! plugin_cfg/*.vim

"  ---------------------------------------------------------------------------
"  Colors
"  ---------------------------------------------------------------------------
let s:uname = system("echo -n \"$(uname)\"")
if !v:shell_error && s:uname == "Linux"
  set t_Co=256
endif
set background=dark
colorscheme jellybeans

"  ---------------------------------------------------------------------------
"  Spellchecking
"  ---------------------------------------------------------------------------
au BufNewFile,BufRead,BufEnter   *.tex     setlocal spell    spelllang=en_US
au BufNewFile,BufRead,BufEnter   *.wiki    setlocal spell    spelllang=en_US
au BufNewFile,BufRead,BufEnter   *.md      setlocal spell    spelllang=en_US
au BufNewFile,BufRead,BufEnter   *.txt     setlocal spell    spelllang=en_US
au BufNewFile,BufRead,BufEnter   README    setlocal spell    spelllang=en_us
