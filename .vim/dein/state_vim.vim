if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/kosuke.kato/.vimrc'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/kosuke.kato/.vim/dein'
let g:dein#_runtime_path = '/Users/kosuke.kato/.vim/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/kosuke.kato/.vim/dein/.cache/.vimrc'
let &runtimepath = '/Users/kosuke.kato/.vim,/Users/kosuke.kato/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/kosuke.kato/.vim/dein/.cache/.vimrc/.dein,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim80,/usr/local/share/vim/vimfiles/after,/Users/kosuke.kato/.vim/after,/Users/kosuke.kato/.vim/dein/.cache/.vimrc/.dein/after'
