" ------------------------------------------------------------------------------
" Autocommands
" ------------------------------------------------------------------------------
if has("autocmd")
  if version >= 600
    filetype plugin indent on
  endif

  autocmd FileType text setlocal textwidth=80 comments=fb:-,fb:*,b:#,n:>,:%

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

else
  set autoident
endif

" ------------------------------------------------------------------------------
" Highlight long lines
" ------------------------------------------------------------------------------
function! HighlightTooLongLines()
  highlight def link RightMargin Error
  if &textwidth != 0
    exec 'match RightMargin /\%<' . (&textwidth + 3) . 'v.\%>' . (&textwidth + 1) . 'v/'
  endif
endfunction

augroup filetypedetect
au BufNewFile,BufRead * call HighlightTooLongLines()
augroup END
