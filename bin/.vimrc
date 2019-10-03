"左右のカーソル移動で行間移動可能にする。
set whichwrap=b,s,<,>,[,]
"ノーマルモー"バックアップファイルを作らない
set nobackup
"スワップファイルをつくらない
set noswapfile
"編集中のファイルが変更されたら自動で読み直す
set autoread
"バッファが編集中でもそのファイルを開けるように
set hidden
"入力中のコマンドを表示
set showcmd

"行番号表示
set number

" syntax highlight
syntax on

" カッコを補完
"inoremap { {}<LEFT>
"inoremap ( ()<LEFT>
"inoremap [ []<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>

" indent
"set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore""
"左右のカーソル移動で行間移動可能にする。
set whichwrap=b,s,<,>,[,]
"

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

"折返し時のjk
noremap j gj
noremap k gk

"ノーマルモードでもctrl+hjklで移動
noremap <C-h> h
noremap <C-j> gj
noremap <C-k> gk
noremap <C-l> l
"行頭・行末移動
noremap <C-e> $<RIGHT>a
noremap <C-a> ^i
noremap <S-l> $<RIGHT>a
noremap <S-h> ^i
"コマンドモードに
inoremap <silent> jj <ESC>
"Ctrlで挿入モードでカーソル移動
inoremap <C-k> <ESC>gka
inoremap <C-j> <ESC>gja
inoremap <C-h> <ESC>ha
inoremap <C-l> <ESC>la
inoremap <C-d> <BS>
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$
inoremap <C-u> <ESC>ui
inoremap <C-r> <ESC><C-r>i
inoremap <C-s> <ESC>:wi
