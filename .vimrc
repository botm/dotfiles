" reload this file with :so %
execute pathogen#infect()

" Appearance
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
let mapleader=' '
let maplocalleader=' '
nmap ä [
nmap Ä ]
omap ä [
omap Ä ]
xmap ä [
xmap Ä ]
map <C-N> :enew<CR>
map <C-L> :bnext<CR>
map <C-H> :bprev<CR>

" Settings
set hidden
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
set conceallevel=2
set foldlevelstart=99
let g:tex_conceal="abdgm"

" File extensions
filetype plugin indent on
syntax on
autocmd FileType vue syntax sync fromstart

" Directories
set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files

" Markdown
let g:markdown_fenced_languages = ['css', 'javascript', 'js=javascript', 'xml', 'java', 'c', 'cpp', 'php', 'python']

" Vimwiki
let g:vimwiki_list=[{'path': '~/sync_work/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_folding='expr'

" Airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list=2
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" Ultisnips
let g:UltiSnipsSnippetDir=['~/.vim/ultisnips']
let g:UltiSnipsSnippetDirectories=['~/.vim/ultisnips', 'ultisnips']
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsEditSplit="horizontal"

" Neocomplete
let g:neocomplete#enable_at_startup=1

" Vimtex
let g:vimtex_view_general_viewer='okular'
let g:vimtex_view_general_options='--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk='--unique'
