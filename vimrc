"""""""""""""""
" vim plugins "
"""""""""""""""
" managed by Vundle
" https://github.com/VundleVim/Vundle.vim

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" other Plugins
Plugin 'godlygeek/tabular' " plugins for aligning text
Plugin 'rodjek/vim-puppet' " make Vim more Puppet friendly
Plugin 'tpope/vim-fugitive' " Git wrapper 
Plugin 'vim-syntastic/syntastic' " syntax checking plugin for Vim

call vundle#end()

""""""""""""""""""""
" colors and fonts "
""""""""""""""""""""
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif

if &t_Co >= 256 || has("gui_running")
    " You can load custom color schemes by placing them in .vim/colors
    "colorscheme desert
endif

if &t_Co > 2 || has("gui_running")
    " switch syntax highlighting on, when the terminal has colors
    syntax on
endif

set background=dark

""""""""""""""
" textsearch "
""""""""""""""
set incsearch " highlights as you type an expression
set ignorecase " make searches case-insensitive
set smartcase " except when you include upper-case characters
set hlsearch " highlights the current search

" key to clear the highlight
nmap \q :nohlsearch<CR> 

""""""""""""""""""
" user interface "
""""""""""""""""""
set hidden " hides buffers instead of closing them (means you can have unwritten changes to a file and open a new file using :e)
set title " change the terminal's title
set scrolloff=2 " show at least two lines of context visible around the cursor
set wildmode=list " file name completion
set ruler " show curser line and column at bottom right

""""""""""""""""""""""""
" text: tab and indent "
""""""""""""""""""""""""
filetype plugin indent on " switch filetype-specific indentation on
set expandtab tabstop=4 shiftwidth=4 softtabstop=4 " set tab to 4 spaces

""""""""""""""""""""
" syntastic config "
""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_puppet_puppetlint_args='--no-documentation-check --no-class_inherits_from_params_class-check --relative --no-80chars-check' " puppet-lint config

""""""""
" misc "
""""""""
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
