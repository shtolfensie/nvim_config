" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    " Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    Plug 'joshdick/onedark.vim'
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
    " debugger
    "Plug 'puremourning/vimspector'

call plug#end()
