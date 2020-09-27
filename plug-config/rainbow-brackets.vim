let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

" List of colors that you do not want. ANSI code or #RRGGBB
" let g:rainbow#blacklist = [233, 234]

augroup rainbow_lisp
  autocmd!
  " autocmd FileType lisp,clojure,scheme,c,js RainbowParentheses
  autocmd FileType * RainbowParentheses
augroup END
