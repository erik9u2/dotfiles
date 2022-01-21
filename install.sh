if [ ! -f "$HOME/.vimrc" ] ;
then
	ln -s ${PWD}/.vimrc $HOME/.vimrc
fi

if [ ! -f "$HOME/.tmux.conf" ] ;
then
	ln -s ${PWD}/.tmux.conf $HOME/.tmux.conf
fi

mkdir -p $HOME/.vim/pack/plugins/start

if [ ! -d "$HOME/.vim/pack/plugins/start/ctrlp" ] ;
then
  git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git $HOME/.vim/pack/plugins/start/ctrlp
fi
