pkg upgrade
pkg in git
git clone https://github.com/frloonie/termux_dotfiles workspace/personal/termux_dotfiles
ln -s workspace/personal/termux_dotfiles/bin bin
ln -s workspace/personal/termux_dotfiles/termux .termux
ln -s workspace/personal/termux_dotfiles/local .local
ln -s workspace/personal/termux_dotfiles/init.sh $PREFIX/etc/profile.d/init.sh
pkg install tmux zsh curl wget nodejs python rust build-essential neovim
git clone --depth=1 https://github.com/romkatv/powerlevel10k ~/.local/share/powerlevel10k

reset termux
