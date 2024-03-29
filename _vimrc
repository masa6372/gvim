"-------------------------------------------------------------------------
"                           for plugin
"-------------------------------------------------------------------------
set encoding=utf-8
let g:plug_timeout = 300

call plug#begin('~/.config/nvim/plugged')
	Plug 'preservim/nerdtree'                               "プラグイン管理用
	Plug 'ycm-core/YouCompleteMe', {'do': './install.py'}   "自動補間
	Plug 'itchyny/calendar.vim'
	"カレンダー 
	Plug 'vim-syntastic/syntastic'
	"文法ミスのハイライト
	Plug 'godlygeek/tabular'
	"以下MarkDownのため
	Plug 'plasticboy/vim-markdown'
	Plug 'previm/previm'
    Plug 'daeyun/vim-matlab'
    "Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

filetype plugin on "for netrw
"-------------------------------------------------------------------------
""                           for coc.nvim
"-------------------------------------------------------------------------
let g:coc_global_extensions = [
    \'coc-clangd',
    \'coc-pyright'
    \]
"-------------------------------------------------------------------------
"                           markdown settings
"-------------------------------------------------------------------------
let g:previm_open_cmd = 'C:/Program\ Files//Google/Chrome/Application/chrome.exe'
"MarkDownでブラウザ表示させるためのパス
"--------------------------------------------------------------------------
"                            general settings
"--------------------------------------------------------------------------
set guifont=FixedSys:h14
set guifontwide=FixedSys:h16
silent! helptags ALL
syntax on
"シンタックスハイライトを有効化
filetype plugin indent on
"ファイルタイプに基づいたインデントを有効化
set foldmethod=indent       "インデントでたたむ
set autoindent
"新しい行を始めるときに自動でインデント 
set expandtab               "タブをスペースに変換
set tabstop=4
"タブをスペース四文字とカウント
set shiftwidth=4
"自動インデントに使われるスペースの数を四に設定
set backspace=2
"バックスペースの挙動を修正
set termguicolors
"tmuxなどのカラースキームを修正
colorscheme torte           "カラースキームを設定
set number                  "行数を追加
set clipboard=unnamed,unnamedplus 
"クリップボードに*pでコピーするため
set laststatus=2
"ステータスラインを常時表示
set showcmd
if !exists('g:vscode') 
	"最後に実行したコマンドをステータスラインに表示
	set cursorline
	"カーソルが居る行にラインを表示
	set cursorcolumn
	"カーソルが居る列にラインを表示
endif
"--------------------------------------------------------------------------
"　　　　　　　　　　　　　　　for japanese input
"--------------------------------------------------------------------------
set ttimeout
set ttimeoutlen=50
if !exists('g:vscode') 
	set ambiwidth=double
endif

inoremap <silent> <ESC> <ESC>
inoremap <silent> <C-[> <ESC>
inoremap <silent> <C-j> <C-^>
"--------------------------------------------------------------------------
"                           leader key settings
"--------------------------------------------------------------------------
let mapleader = "-"
"リーダーキーを-に設定
nnoremap <leader>ev :vsplit $MYVIMRC<cr> 
"-evでMYVIMRCを開く
nnoremap <leader>sv :source $MYVIMRC<cr>
"-svでMYVIMRCを実行
set showmatch               "カッコ()を対応づける
set matchtime=1
"対応するカッコへカーソルが飛ぶ時間を0.1秒に設定
set pumheight=10
"補完のポップアップメニューの高さを設定

"pythonのバージョンはgvim依存
"set pythonthreedll='C:\Users\songp\AppData\Local\Programs\Python\Python311\python311.dll'
"set pythonthreehome='C:\Users\songp\AppData\Local\Programs\Python\Python311\python.exe'
let g:python3_host_prog='C:\Users\songp\AppData\Local\Programs\Python\Python311\python.exe'
"--------------------------------------------------------------------------
"                           for QFixHowm
"--------------------------------------------------------------------------
"QFixHowmの導入
set runtimepath+=C:\Users\songp\qfixhowm

let howm_dir    = 'C:\Users\songp\OneDrive\ドキュメント\diary'
let howm_filename = '%Y/%m/%Y-%m-%d-%H%M%S.md'
let howm_fileencoding   = 'cp932'
let howm_fileformat     = 'dos'
let QFixWin_EnableMode = 1
let QFixHowm_FileType   = 'markdown'
let QFixHowm_Title      = '#'
