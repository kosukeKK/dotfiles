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

使い方<br>
ファイルのツリーがでてくる<br>
(ctrl+e)<br>
ファイル検索ができる<br>
(ctrl+p)<br>
キーワード検索<br>
:Ggrep 検索ワード<br>
まとめてコメント文<br>
(shift+v)必要な範囲を指定したあと(ctrl+-)<br><br>
Rails<br>
対応するビュー、モデル、コントローラーに飛ぶ<br>
:Rm<br>
:Rv<br>
:Rc<br>
