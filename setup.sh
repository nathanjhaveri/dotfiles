mkdir -p ~/.vim/_backup
mkdir -p ~/.vim/_swap
mkdir -p ~/.vim/_undo
mkdir -p ~/.config/nvim/

rm $HOME/.vim
ln -sf $HOME/code/dotfiles/.vim/ $HOME/.vim
ln -sf $HOME/code/dotfiles/.vimrc $HOME/.vimrc
ln -sf $HOME/code/dotfiles/.bashrc $HOME/.bashrc
ln -sf $HOME/code/dotfiles/.bash_profile $HOME/.bash_profile
ln -sf $HOME/code/dotfiles/.vimrc $HOME/.config/nvim/init.vim

