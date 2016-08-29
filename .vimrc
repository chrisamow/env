"Vundle setup
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"don't forget to PluginInstall from vim
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'davidhalter/jedi-vim'
Plugin 'jelera/vim-javascript-syntax'
"Plugin 'Valloric/YouCompleteMe'
    "Build Ycm with the clang option. Follow the quick setup here:
    "https://github.com/Valloric/YouCompleteMe

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"end Vundle setup


" Colors (adapted from ligh2011.vim):
"hi User1 guifg=#ffdad8  guibg=#880c0e
"hi User2 guifg=#000000  guibg=#F4905C
"hi User3 guifg=#292b00  guibg=#f4f597
"hi User4 guifg=#112605  guibg=#aefe7B
"hi User5 guifg=#051d00  guibg=#7dcc7d
"hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
"hi User8 guifg=#ffffff  guibg=#5b7fbb
"hi User9 guifg=#ffffff  guibg=#810085
"hi User0 guifg=#ffffff  guibg=#094afe
"these colors not used yet, something not right, line below should work to
"change highlight color
"set statusline+=%8*

" line numbers - number & relativenumber means hybrid mode
set number
set relativenumber
set ruler " current pos along bottom
set rulerformat=%30(%=%B\ %m%r%w\ %l,%c%V\ %P%)     "we only get 18 characters on right side
"decided don't want to waste an extra line if we can get by with ruler
" instead start statusline to look similar to default so we can customize
" set statusline=%<%F%h%m%r%=%B\ %o\ \ %l,%c%V\ %P  "nice fallback
"statusline setup
"set statusline =%#identifier#
"set statusline+=%*
"set statusline+=%F    " filename
"set statusline+=%*
""display a warning if file encoding isnt utf-8
"set statusline+=%#warningmsg#
"set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
"set statusline+=%*
"set statusline+=%h      "help file flag
""set statusline+=%y      "filetype
""read only flag
"set statusline+=%#identifier#
"set statusline+=%r
"set statusline+=%*
""modified flag
"set statusline+=%#warningmsg#
"set statusline+=%m
"set statusline+=%*
"set statusline+=\ %o=%B
""display a warning if &paste is set
"set statusline+=%*
"set statusline+=%=      "left/right separator
"set statusline+=%c,     "cursor column
"set statusline+=%l/%L   "cursor line/total lines
"set statusline+=\ %P    "percent through file
"set laststatus=2
"hi StatusLine ctermbg=blue ctermfg=brown

set background=dark  "most of the time?

" mostly syntax for python - nvm using jedi instead
"syntax on
"filetype indent plugin on


" python folding
set foldmethod=indent
set foldlevel=20    " start folds opened
nnoremap <space> za
vnoremap <space> zf

" Incremental searching is sexy
set incsearch

set ignorecase
set smartcase   "case-sensitive if search contains an uppercase character

" Highlight things that we find with the search
set hlsearch

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" Enable mouse support in console
set mouse=a

" This shows what you are typing as a command.  I love this!
set showcmd

" for python
set tabstop=4
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=4
set autoindent

" deal with terminal pasting to avoid extra indents
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Allow saving of files as sudo when I forgot to start vim using sudo.
" cmap w!! w !sudo tee > /dev/null %

" wrap column hint
set colorcolumn=80
highlight ColorColumn ctermbg=darkgray

" experimental
set t_Co=256        "color pallet
"syntax on
"set background=dark
"colorscheme=distinguished    "needs to be installed

