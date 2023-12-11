set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " convert tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
"set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set termguicolors           " supports a greater number of colors
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
call plug#begin()
    " Appearance
    Plug 'itchyny/lightline.vim'	"bettes last line
    Plug 'ryanoasis/vim-devicons'	"iconos graficos
    Plug 'sainnhe/gruvbox-material'	"colorscheme

    " Utilities
    Plug 'sheerun/vim-polyglot'     "languaje pack for 164 languajes
	Plug 'jiangmiao/auto-pairs'		"autocomplete () [] {}
    Plug 'ap/vim-css-color'         "color syntax
    Plug 'preservim/nerdtree'		"tree
    Plug 'Yggdroot/indentLine'		"indent line |

    " Completion / linters / formatters
    Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}
    Plug 'plasticboy/vim-markdown'  "syntax for markdown

    " Git
    Plug 'airblade/vim-gitgutter'   "show data changed form last commit
    Plug 'itchyny/vim-gitbranch'	"branch added to last line
    Plug 'github/copilot.vim'       "copilot support
call plug#end()

" Keymaps
 let g:NERDTreeWinSize=25
 map <C-t> :NERDTreeToggle<CR>
 map <F2> :belowright terminal<CR>

"config for indent line
 let g:indentLine_char = "|"
 let g:indentLine_color_term = 239

" config for colorschema
 let g:gruvbox_material_background = 'hard'                                                                                                                       
 colorscheme gruvbox-material
 let g:github_colors_soft = 1

 
" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
 if (has("termguicolors"))
    set termguicolors
 endif

"map CR to configm selection for coc.nvim
 inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

"config for itchyny/lightline.vim with itchyny/vim-gitbranch
 set laststatus=2
 let g:lightline = {
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'gitbranch#name'
    \ },
    \ }  
