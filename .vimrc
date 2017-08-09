execute pathogen#infect()

colorscheme jellybeans
let g:airline_theme='jellybeans'
set background=dark
if has('gui_running')
  set guifont=DejaVu_Sans_Mono_for_Powerline:h10:cANSI
  set encoding=utf-8
  set guioptions-=T
  set guioptions-=m
endif
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

let mapleader = ' '

set number
set foldcolumn=2
set laststatus=2
set ignorecase
set smartcase
set incsearch

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set wrap
set textwidth=100
set colorcolumn=+1
set clipboard=unnamed

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:neocomplete#enable_at_startup = 1

let g:vim_markdown_math = 1
