filetype plugin on
filetype indent on

" Auto read when a file is changed from outside
set autoread

syntax enable

" Auto Indent
set ai
set expandtab
set softtabstop=2
set shiftwidth=2
set hlsearch

set showmatch

execute pathogen#infect()

" Solarized Dark
if has('gui_running')
    set background=light
else
    set background=dark
endif
let g:solarized_termtrans = 1
colorscheme solarized

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Custom puppet-lint exclusions:
let g:syntastic_puppet_puppetlint_args='--no_class_inherits_from_params_class-check'
