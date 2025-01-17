ln -s $HOME/.dotfiles/files/zsh/zshrc $HOME/.zshrc
mkdir .oh-my-zsh/custom/themes
ln -s $HOME/.dotfiles/files/zsh/jeff.zsh-theme $HOME/.oh-my-zsh/custom/themes/jeff.zsh-theme
ln -s $HOME/.dotfiles/files/tmux.conf $HOME/.tmux.conf
ln -s $HOME/.dotfiles/files/vimrc $HOME/.vimrc
ln -s $HOME/.dotfiles/files/git_aliases $HOME/.git_aliases
echo "[include]\n\tpath = ~/.git_aliases" >> ~/.gitconfig
ln -s $HOME/.dotfiles/files/zsh/jeff.zsh-theme $HOME/.oh-my-zsh/custom/themes/jeff.zsh-theme