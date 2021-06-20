source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/plug-config/coc.vim

source $HOME/.config/nvim/plug-config/rainbow-brackets.vim

source $HOME/.config/nvim/themes/onedark.vim
"source $HOME/.config/nvim/themes/gruvbox.vim
source $HOME/.config/nvim/themes/airline.vim

source $HOME/.config/nvim/plug-config/signify.vim

source $HOME/.config/nvim/plug-config/markdown-preview.vim

"source $HOME/.config/nvim/plug-config/vimspector.vim
":imap jk <Esc>
set number
set relativenumber

set clipboard=unnamedplus
set clipboard+=unnamedplus
let g:clipboard = {
          \   'name': 'win32yank-wsl',
          \   'copy': {
          \      '+': 'win32yank.exe -i --crlf',
          \      '*': 'win32yank.exe -i --crlf',
          \},
          \   'paste': {
          \      '+': 'win32yank.exe -o --lf',
          \      '*': 'win32yank.exe -o --lf',
          \},
          \   'cache_enabled': 0,
          \}



"let g:asmsyntax='nasm'
autocmd BufEnter *.asm :setlocal filetype=nasm

let g:vim_markdown_new_list_item_indent = 0

" should help with python in venv
let g:python3_host_prog='/usr/bin/python3'

packadd termdebug

let g:termdebug_wide=1

" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0
