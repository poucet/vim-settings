syntax on
" ------------------------------------------------------------------------------
" Set up custom color scheme
" ------------------------------------------------------------------------------
if version >= 500
  let c_comment_strings=1
  if exists("syntax_on")
    syntax on
  endif

  highlight Normal guibg=grey90
  highlight Cursor guibg=Green guifg=NONE
  highlight lCursor guibg=Cyan guifg=NONE
  highlight NonText guibg=grey80
  highlight Constant gui=NONE guibg=grey95
  highlight Special gui=NONE guibg=grey95
  highlight Visual guibg=#A0D0A0
endif

