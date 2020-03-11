mkdir ~/.ptpython
DOTFILES=$HOME/dotfiles

ln -s $DOTFILES/ssh ~/.ssh
mv ~/.zshrc ~/.zshrc.old
ln -s $DOTFILES/public/zshrc ~/.zshrc
ln -s $DOTFILES/config/vimrc ~/.vimrc
ln -s $DOTFILES/config/gitconfig ~/.gitconfig
ln -s $DOTFILES/public/gitignore_global ~/.gitignore_global
ln -s $DOTFILES/oh-my-zsh ~/.oh-my-zsh
ln -s $DOTFILES/pythonrc ~/.pythonrc
ln -s $DOTFILES/config/ptpython $HOME/Library/Application Support/ptpython
#ln -s $DOTFILES/history/$HOSTNAME/ptpython_history ~/.ptpython/history
ln -s $DOTFILES/config/ptpython/config.py ~/.ptpython/config.py
ln -s $DOTFILES/public/tmux.conf ~/.tmux.conf
ln -s $DOTFILES/config/$HOSTNAME/tmux.conf ~/tmux_extra
ln -s $DOTFILES/jupyter ~/.jupyter
mkdir ~/.config
ln -s $DOTFILES/config/yapf ~/,config/yapf
$DOTFILES/config/$HOSTNAME/gen_soft_links.sh
ln -s $DOTFILES/config/$HOSTNAME/p10k.zsh ~/.p10k.zsh
