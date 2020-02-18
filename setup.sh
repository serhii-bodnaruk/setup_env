# git
echo "Installing git"
sudo apt-install git -y

# zsh
echo "INSTALL zsh"
sudo apt install zsh -y

echo "INSTALL oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# gogh
echo "INSTALL gogh/grape terminal theme"
bash -c "TERMINAL='gnome-terminal' $(curl -sLo- https://git.io/vQgMr)"

# vim
echo "INSTALL curl"
sudo apt-get install curl -y

echo "INSTALL ag"
sudo apt-get install silversearcher-ag #install ag

echo "INSTALL cmake"
sudo apt-get install build-essential cmake -y #install build-essential cmake

echo "INSTALL python-dev"
sudo apt-get install python-dev -y #install python-dev

echo "INSTOLL neovim"
sudo apt install neovim

echo "INSTALL plug"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "CLONE vimrc"


