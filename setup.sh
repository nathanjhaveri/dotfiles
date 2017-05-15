mkdir -p ~/.vim/_backup
mkdir -p ~/.vim/_swap
mkdir -p ~/.vim/_undo
mkdir -p ~/.config/

ln -sf $HOME/code/dotfiles/.vim/ $HOME/.vim
ln -sf $HOME/code/dotfiles/.bashrc $HOME/.bashrc
ln -sf $HOME/code/dotfiles/.bash_profile $HOME/.bash_profile
ln -sf $HOME/code/dotfiles/.vim/ $HOME/.config/nvim

