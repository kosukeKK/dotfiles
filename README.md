# dotfiles
macの設定ファイルとかいいつつ
vimの設定しか入ってない

vim☓railsで開発するなら一式入ってるから便利なはず
インストール手順

#macvimの標準設定だとdeinがインストールできないから上げとく
brew install vim

#ショートカット作っとく
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vim ~/.vim

使い方
ファイルのツリーがでてくる
(ctrl+e)
ファイル検索ができる
(ctrl+p)
キーワード検索
:Ggrep 検索ワード
まとめてコメント文
(shift+v)必要な範囲を指定したあと(ctrl+-)
Rails
対応するビュー、モデル、コントローラーに飛ぶ
:Rm
:Rv
:Rc
