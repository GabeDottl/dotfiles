DOTFILES=`realpath -s $(dirname $0)`/.. # $0 is the filepath to this script.
#DOTFILES=$HOME/dotfiles

ln -s $DOTFILES/ssh ~/.ssh
mv ~/.zshrc ~/.zshrc.old
ln -s $DOTFILES/public/zshrc ~/.zshrc
ln -s $DOTFILES/public/gitignore_global ~/.gitignore_global
ln -s $DOTFILES/public/tmux.conf ~/.tmux.conf
ln -s $DOTFILES/jupyter ~/.jupyter
ln -s $DOTFILES/oh-my-zsh ~/.oh-my-zsh
$DOTFILES/config/gen_soft_links.sh
$DOTFILES/config/$HOSTNAME/gen_soft_links.sh


ln -s ~/dotfiles/.doom.d ~/.doom.d
ln -s ~/dotfiles/ ~/
ln -s ~/dotfiles/.emacs.d ~/.emacs.d
ln -s ~/dotfiles/.docker ~/.docker
