" ------------------------------------------------------------------------------
" Custom bindings
" ------------------------------------------------------------------------------
" imap <C-t> TODO(poucet):<Space>

" Timestamping command:
inoremap <F5> <C-R>=strftime("%c")<CR>

if version >= 700
  if has("gui_running")
    map <C-Tab> gt
    map <C-S-Tab> gT
    imap <C-Tab> <Esc>gt
    imap <C-S-Tab> <Esc>gT
  else
    map <C-T> mzgt
    map <C-Y> mzgT
    imap <C-T> <Esc>mzgtg`za
    imap <C-Y> <Esc>mzgTg`za
  endif
endif

nnoremap ` '
nnoremap ' `

set pastetoggle=<F11>
