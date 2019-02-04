set ai                          " set auto-indenting on for programming
set showmatch                   " automatically show matching brackets. works like it does in bbedit.
set vb                          " turn on the "visual bell" - which is much quieter than the "audio blink"
set ruler                       " show the cursor position all the time
set laststatus=2                " make the last line where the status is two lines deep so you can see status always
set backspace=indent,eol,start  " make that backspace key work the way it should
set nocompatible                " vi compatible is LAME
set background=dark             " Use colours that work well on a dark background (Console is usually black)
set showmode                    " show the current mode
set clipboard=unnamed           " set clipboard to unnamed to access the system clipboard under windows
syntax on                       " turn syntax highlighting on by default
set title
set t_Co=256                    " have proper colours, also makes airlline work
set expandtab
set hlsearch
"spaces, not tabs
set tabstop=8
set shiftwidth=8
set softtabstop=8
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let g:deus_termcolors=256

set autochdir 
set tags+=./tags;

filetype on


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
"Plugin 'powerline/powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'myusuf3/numbers.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'
Plugin 'justinmk/vim-sneak'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'wesQ3/vim-windowswap'

Plugin 'xero/blaquemagick.vim'
Plugin 'junegunn/seoul256.vim'
Bundle 'ajmwagar/vim-deus'
Bundle 'sjl/badwolf'
Plugin 'christophermca/meta5'
Plugin 'reedes/vim-colors-pencil'

call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" /vundle

" NERDtree auto exit
augroup nerdtree
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END

"let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py
"let g:ycm_confirm_extra_conf = 0

colorscheme pencil   
"colorscheme gruvbox 
"let g:gruvbox_contrast_dark = 'hard'

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>


"syntastic defaults
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_loc_list_height=3
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
hi Normal guibg=NONE ctermbg=NONE

"ctrlp
let g:ctrlp_map = '<c-p>'

let mapleader = '-'

"sourcing and editing vimrc
augroup vimrcgroup
        "open vimrc split vertically
        nnoremap <Leader>ev :vsplit $MYVIMRC<cr><c-w>L
        "source vimrc
        nnoremap <Leader>sv :source $MYVIMRC<cr>
augroup END

" signature for java assignments
augroup java_assignments
        autocmd FileType java :iabbrev <Leader>sig /*<cr>Name: Sean Maher<cr>Student ID: 300058566<cr>Class:<cr>Work:<cr>/
augroup END
