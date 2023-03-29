#!/bin/bash
echo "Installing XCode"
xcode-select --install

echo "Installing Homebrew"
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Setup Iterm2"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew update
brew upgrade
brew install git
brew install --cask iterm2
brew install zsh-completions
brew install zsh-syntax-highlighting

cd $HOME
sudo mv .zshrc .old-zshrc
git clone https://github.com/JGuille/dotfiles.git
sudo mv $HOME/dotfiles/.zshrc $HOME/
sudo mv $HOME/dotfiles/.zsh $HOME/.zsh
sudo mv $HOME/dotfiles/.config $HOME/.config
source .zshrc

echo "Install Homebrew Packages"
brew install autojump
brew install bash
brew install ca-certificates
brew install cabextract
brew install cdrtools
brew install chntpw
brew install cmake
brew install cmatrix
brew install dive
brew install dnsmasq
brew install etcd
brew install exa
brew install f1viewer
brew install gawk
brew install gdbm
brew install gettext
brew install gh
brew install glow
brew install gmp
brew install go
brew install helm
brew install htop
brew install iamlive
brew install icu4c
brew install jq
brew install kops
brew install kubectx
brew install kubernetes-cli
brew install libidn2
brew install libunistring
brew install libxml2
brew install libyaml
brew install libzip
brew install lz4
brew install mpfr
brew install mpdecimal
brew install ncurses
brew install oniguruma
brew install openssl@1.0
brew install openssl@1.1
brew install openssl@3
brew install oscpack
brew install pidof
brew install pcre2
brew install python@3.10
brew install python@3.11
brew install pyyaml
brew install readline
brew install rlwrap
brew install sendosc
brew install six
brew install speedtest-cli
brew install sqlite
brew install starship
brew install streamlink
brew install terraform
brew install terraform-docs
brew install terragrunt
brew install tflint
brew install thefuck
brew install tldr
brew install tree
brew install watch
brew install wget
brew install wimlib
brew install xz
brew install zstd

brew install --cask alt-tab
brew install --cask aws-vault
brew install --cask chromedriver
brew install --cask font-hack-nerd-font
brew install --cask franz
brew install --cask google-cloud-sdk
brew install --cask gulp
brew install --cask mark-text
brew install --cask motrix
brew install --cask playcover-community
brew install --cask tomatobar
brew install --cask visual-studio-code
brew install --cask docker
brew install docker-compose
sudo curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target