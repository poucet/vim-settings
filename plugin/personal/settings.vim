set backspace=indent,eol,start
set whichwrap+=<,>,[,]
set nobackup
set history=1000
set ruler
set showcmd	" display incomplete commands
set incsearch	" do incremental searching
set softtabstop=2
set tabstop=2
set shiftwidth=2
set laststatus=2
set expandtab
set mousehide
set clipboard=unnamed
set sessionoptions-=options
set textwidth=0
set visualbell
set wildmode=longest:full,full
set wildmenu
set scrolloff=3
set shortmess=aI
set expandtab
set nohidden

if &t_Co > 2
  set hlsearch
endif

if has("gui_running")
  set guioptions-=T
  set guioptions-=m
  set background=light
  set hlsearch
  set guifont=Monospace\ 9
else
  set background=dark
endif

