"viとの互換性を無効にする(INSERT中にカーソルキーが有効になる)
set nocompatible
  
" ファイル形式の検出を無効にする
filetype off
filetype indent off
filetype plugin off

" vundle を初期化してVUNDLE 自身も VuNDLE で管理
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'jnurmine/Zenburn'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'


"===================================================================
" 基本設定 
"===================================================================
" 文字コード
set encoding=utf-8

" 色づけをオン
syntax on
colorscheme Zenburn

" ファイル名と内容によってファイルタイプを判別し、ファイルタイププラグインを有効にする
filetype indent plugin on

" コマンドライン補完を便利に
set wildmenu

"編集中でも他のファイルを開けるようにする
set hidden

"カーソルの上または下に表示する最小限の行数
set scrolloff=5

"OSのクリップボードを使用する
set clipboard=unnamed


"===================================================================
" 検索・置換
"===================================================================
" 検索語を強調表示（<C-L>を押すと現在の強調表示を解除する）
set hlsearch

"インクリメンタルサーチを行う
set incsearch

" 検索時に大文字・小文字を区別しない。小文字の検索でも大文字も見つかるように
set ignorecase

" ただし大文字も含めた検索の場合はその通りに検索する
set smartcase

" 検索をファイルの先頭へループしない
set nowrapscan

"コマンド、検索パターンを100個まで履歴に残す
set history=10000


"===================================================================
" カーソル挙動
"===================================================================
"カーソルを行頭，行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

" オートインデント、改行、インサートモード開始直後にバックスペースキーで
" 削除できるようにする。
set backspace=indent,eol,start

" 移動コマンドを使ったとき、行頭に移動しない
set nostartofline

" 閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch

" 対応括弧の表示秒数を2秒に
set matchtime=2



"===================================================================
" タブ
"===================================================================
" タブの代わりに空白文字を挿入する
set expandtab

" 画面上で <Tab> が対応する空白の数
set tabstop=2

" autoindentや矩形選択時のタブ挿入幅
set shiftwidth=2

" <Tab>で入力される空白の数
set softtabstop=2

" 行頭の余白内で<Tab>を押すと'shiftwidth'の数だけインデントする
set smarttab

" 新しい行のインデントを現在行と同じにする
set autoindent

"□や○の文字があってもカーソル位置がずれないようにする
set ambiwidth=double


"===================================================================
" 画面表示 
"===================================================================
" タブ文字、行末など不可視文字を表示する
" set list

" 画面最下行にルーラーを表示する
set ruler

" ステータスラインを常に表示する
set laststatus=2

" 右下に行番号を表示
set number

" タイプ途中のコマンドを画面最下行に表示
set showcmd

"===================================================================
"" Mapping <jump-tag>
"===================================================================
" コマンド       ノーマルモード 挿入モード コマンドラインモード ビジュアルモード
" map/noremap           @            -              -                  @ 
" nmap/nnoremap         @            -              -                  -
" imap/inoremap         -            @              -                  - 
" cmap/cnoremap         -            -              @                  -  
" vmap/vnoremap         -            -              -                  @
" map!/noremap!         -            @              @                  -
"-------------------------------------------------------------------

" 素早くjjと入力した場合はESCと見なす
inoremap jj <esc>
vnoremap jj <esc>

" インサートモードでも移動
inoremap <c-d> <delete>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-h> <left>
inoremap <c-l> <right>

" j, k による移動を折り返されたテキストでも見た目通りに振る舞うように
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" vを二回で行末まで選択
vnoremap v $h
