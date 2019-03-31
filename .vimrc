execute pathogen#infect()
syntax on 
set encoding=utf-8
set number
set t_Co=256
filetype plugin indent on
set mouse=a

set tabstop=4
set shiftwidth=4
set expandtab

" change to current file dir
set autochdir

colorscheme dracula
let g:airline_theme = 'tender'

" Nerd Tree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()
let g:pymode_python = 'python3'

" Vim Modeline
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

"YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

" Synctastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let python_highlight_all=1

" Vim-emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-e>'
