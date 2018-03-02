" reload this file with :so %
execute pathogen#infect()

colorscheme jellybeans
let g:airline_theme='jellybeans'
set background=dark
set termguicolors
if has('gui_running')
  set encoding=utf-8
  set guioptions-=T
  set guioptions-=m
  set guioptions-=r
  set guioptions-=L
endif
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" Cursor
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
augroup myCmds
    au!
    autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

" Keymappings
let mapleader = ' '
nmap ä [
nmap Ä ]
omap ä [
omap Ä ]
xmap ä [
xmap Ä ]

map <C-N> :enew<CR>
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
map <C-L> :tabn<CR>
map <C-H> :tabp<CR>

set number
set foldcolumn=2
set laststatus=2
set ignorecase
set smartcase
set incsearch
"set hlsearch

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set wrap
set textwidth=100
"set colorcolumn=+1
set clipboard=unnamedplus

" File extensions
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
autocmd FileType vue syntax sync fromstart

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
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:UltiSnipsSnippetDir=['~/.vim/ultisnips']
let g:UltiSnipsSnippetDirectories=['~/.vim/ultisnips', 'ultisnips']
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsEditSplit="horizontal"
let g:neocomplete#enable_at_startup = 1
