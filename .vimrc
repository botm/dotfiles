execute pathogen#infect()

colorscheme jellybeans
let g:airline_theme='jellybeans'
set background=dark
if has('gui_running')
  set encoding=utf-8
  set guioptions-=T
  set guioptions-=m
  set guioptions-=r
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
"set colorcolumn=+1
set clipboard=unnamed

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files

let g:vimwiki_list = [{'path': '~/sync/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
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
let g:UltiSnipsSnippetDir=['~/.vim/ultisnips']
let g:UltiSnipsSnippetDirectories=['~/.vim/ultisnips', 'ultisnips']
let g:UltiSnipsExpandTrigger="<c-j>"
let g:neocomplete#enable_at_startup = 1
