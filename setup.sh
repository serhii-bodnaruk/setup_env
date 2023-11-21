function macInstall {
  echo "INSTALL pip"
  export PATH="/usr/local/opt/python/libexec/bin:$PATH"
  installOrExists "python"

  echo "INSTALL curl"
  installOrExists "curl"

  echo "INSTALL oh-my-zsh"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  echo "INSTALLING tmux"
  installOrExists "tmux"

  echo "INSTALL ag"
  installOrExists "the_silver_searcher"

  echo "INSTOLL neovim"
  installOrExists "neovim"

  echo "INSTALL plug"
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  echo "CLONE vimrc"
  git clone git@github.com:serhii-bodnaruk/vimconf.git
  mkdir -p ~/.config/nvim/
  cp vimconf/init.vim ~/.config/nvim/init.vim
  rm -rf vimconf

  echo "CLONE tmux conf"
  git clone git@github.com:serhii-bodnaruk/tmuxconf.git
  cp tmuxconf/.tmux.conf ~/.tmux.conf
  rm -rf tmuxconf
  pip install powerline-status

  echo "CLONE zsh conf"
  git clone git@github.com:serhii-bodnaruk/zshconf.git
  cp zshconf/.zshrc ~/.zshrc
  rm -rf zshconf

  echo "INSTALLING asdf ruby version manager"
  brew install asdf
  asdf plugin-add ruby
  asdf install ruby 3.2.2
  asdf global ruby 3.2.2

  echo "INSTALLING gh"
  brew install gh
  echo "INSTALLING jira-cli"
  brew install jira
}

function installOrExists {
  brew list $1 || brew install a -y
}

unameout="$(uname -s)"
case "${unameout}" in
  linux*)
    linuxInstall
    ;;
  Darwin*)
    macInstall
    ;;
esac
