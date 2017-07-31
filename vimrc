"https://dougblack.io/words/a-good-vimrc.html
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
colorscheme hybrid

syntax enable           " enable syntax processing
syntax on
set tabstop=4       " number of visual spaces per TAB
set expandtab       " tabs are spaces
set smarttab
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" pathogen
execute pathogen#infect()

" NERDTREE
autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w
let g:NERDSpaceDelims =  1

" enable mouse
set mouse=a

set autoread
