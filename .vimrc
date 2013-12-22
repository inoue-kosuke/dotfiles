"viとの互換性を無効にする(INSERT中にカーソルキーが有効になる)
set nocompatible

" ファイル形式の検出を無効にする
filetype off

" Vundle を初期化して
" Vundle 自身も Vundle で管理
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" ファイル名と内容によってファイルタイプを判別し、ファイルタイププラグインを有効にする
filetype indent plugin on

" 色づけをオン
syntax on

" タイプ途中のコマンドを画面最下行に表示
set showcmd

" 検索語を強調表示（<C-L>を押すと現在の強調表示を解除する）
set hlsearch

" 検索時に大文字・小文字を区別しない。ただし、検索後に大文字小文字が
" 混在しているときは区別する
set ignorecase
set smartcase

"カーソルを行頭，行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

" ステータスラインを常に表示する
set laststatus=2

" 行番号を表示
set number

"BSで削除できるものを指定する
" indent  : 行頭の空白
" eol     : 改行
" start   : 挿入モード開始位置より手前の文字
set backspace=indent,eol,startset nocompatible

"カーソルを行頭，行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
