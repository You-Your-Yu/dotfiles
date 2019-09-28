"左右のカーソル移動で行間移動可能にする。
set whichwrap=b,s,<,>,[,]
"ノーマルモードで文末にカーソルを移動する
set virtualedit=onemore

" line number
set number

" syntax highlight
syntax on

" カッコを補完
inoremap { {}<LEFT>
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

" indent
"set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

" color scheme
colorscheme iceberg
" tab/空白/改行を可視化
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%


" <esc> -> <C-j>
imap <C-j> <esc>
noremap! <C-j> <esc>
"jjで<esc>
inoremap <silent> jj <esc>

"ノーマルモードでもctrl+hjklで移動
noremap <C-h> h
noremap <C-j> j
noremap <C-k> k
noremap <C-l> l
"行頭・行末移動
noremap <C-e> $<RIGHT>i
noremap <C-a> ^i
"コマンドモードに
inoremap <silent> jj <ESC>
"Ctrlで挿入モードでカーソル移動
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-d> <BS>
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$
inoremap <C-u> <ESC>ui
inoremap <C-r> <ESC><C-r>i
