"dein Scripts-----------------------------
if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=/Users/kT/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/kT/.vim/dein')
call dein#begin('/Users/kT/.vim/dein')
"let s:lazy_toml = '~/.dein_lazy.toml'
"call dein#load_toml(s:lazy_toml, {'lazy': 1})
call dein#add('Shougo/dein.vim')
call dein#add('tpope/vim-rails', {'on_ft' : 'ruby'})
"call dein#add('tpope/vim-haml')
call dein#add('Shougo/neocomplcache.vim')
" コード補完
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neocomplcache.vim')
call dein#add('Shougo/neocomplcache-rsense.vim')

" 定義ジャンプ <C-]> 定義に飛ぶ <C-o> 飛ぶ前のバッファに戻る <C-i> <C-o>の逆
call dein#add('szw/vim-tags')
"ファイル検索 ctrl p で検索
call dein#add("ctrlpvim/ctrlp.vim")
" 構文チェック
call dein#add('scrooloose/syntastic')
" ファイルアイコン
call dein#add('ryanoasis/vim-devicons')
" ツリーの表示 ctrl e で表示
call dein#add('scrooloose/nerdtree')
nnoremap <silent><C-e> :NERDTreeToggle<CR>
call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
call dein#add('Yggdroot/indentLine')
" nerdtree初期表示"
"autocmd VimEnter * execute 'NERDTree'
" Rubyのエンドを自動追加
call dein#add('tpope/vim-endwise')
" コメント文が楽になる shift v  ctrl --
call dein#add('tomtom/tcomment_vim')
" Gitを便利に使う
call dein#add('scrooloose/vim-fugitive')
" 不要なスペースを可視化
call dein#add('bronson/vim-trailing-whitespace')
" Let dein manage dein
" Required:
call dein#add('/Users/KT/.vim/dein/repos/github.com/Shougo/dein.vim')
"英単語を補完
"call dein#add('ujihisa/neco-look')
" 情報を見やすく
call dein#add('itchyny/lightline.vim')
call dein#add('tpope/vim-fugitive')
call dein#add('airblade/vim-gitgutter')
call dein#add('/Users/KT/.vim/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })


" Required:
call dein#end()
call dein#save_state()
  endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

"End dein Scripts-------------------------


"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" コピーがクリップボードにコピーになる
set clipboard+=unnamed
" 見た目系
set guifont=Ricty-RegularForPowerline:h14
" ペースト時に行番号をいれない
set paste
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" 括弧入力時の対応する括弧を表示
"set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
"set wildmode=list:longest


" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
""""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
""""""""""""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
""""""""""""""""""""""""""""""

" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
"set wildmenu
" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list
" Tab文字を半角スペースにする
set listchars=tab:\▸\-
"  なんかこれ入れないと補完が効かない
set nopaste

set lazyredraw
" 音消す
set vb t_vb=
set undofile
set undodir=~/vimundo
" バックスペースでいろいろ消せる
set backspace=indent,start
set fileencodings=utf-8,iso-2022-jp,sjis,euc-jp
set fileformats=unix,mac,dos
"□がバグる問題解決
set ambiwidth=double
" 検索系
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow
syntax on
" マウス有効
set mouse=a
set ttymouse=xterm2
" 行番号を表示
set number
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
set t_Co=256
set completeopt=menuone

"for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
"  exec "imap " . k . " " . k . "<C-N><C-P>"
"endfor


imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"
set expandtab
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2
"連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set softtabstop=2
set autoindent

"コード補完
" neocomplcacheの設定
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1

" Use smartcase.
let g:neocomplcache_enable_smart_case = 1

" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1

" Rsense用の設定
if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

"rsenseのインストールフォルダがデフォルトと異なるので設定
let g:rsenseHome = expand("/Users/kT/.rbenv/shims/rsense")
let g:rsenseUseOmniFunc = 1

" alias設定
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap ww :<C-u>w<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

"
