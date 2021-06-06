" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " comment and uncomment
    Plug 'tpope/vim-commentary'

    "Golang
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    " Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    Plug 'joshdick/onedark.vim'
    Plug 'morhetz/gruvbox'

    " Intellisense
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}   
    " Bracker pair colorizer
    Plug 'junegunn/rainbow_parentheses.vim'
    " vim statusline - airline (airline themes might not be needed)
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " vim-devicons
    Plug 'ryanoasis/vim-devicons'

    " Markdown preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

    " Html
    Plug 'mattn/emmet-vim'

    " Python
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'} " python syntax highlighting
    Plug 'Vimjas/vim-python-pep8-indent'

    " debugger
    "Plug 'puremourning/vimspector'
    
    "Git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    "Seesion resotre - works with tmux-resurrect
    Plug 'tpope/vim-obsession'

call plug#end()
