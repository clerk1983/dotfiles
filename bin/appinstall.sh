#!/bin/bash
sudo apt-add-repository ppa:fish-shell/release-3 -y
sudo apt update

sudo apt install tree             -y
sudo apt install ninja-build      -y
sudo apt install gettext          -y
sudo apt install libtool          -y
sudo apt install libtool-bin      -y
sudo apt install autoconf         -y
sudo apt install automake         -y
sudo apt install cmake            -y
sudo apt install g++              -y
sudo apt install pkg-config       -y
sudo apt install unzip            -y
sudo apt install curl             -y
sudo apt install doxygen          -y
sudo apt install tmux             -y
sudo apt install fonts-powerline  -y
sudo apt install python3-pip      -y
sudo apt install ruby             -y 
sudo apt install gem              -y
sudo apt install ruby-dev         -y
sudo apt install build-essential  -y


PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sudo ln -s -f /home/linuxbrew/.linuxbrew/bin/brew /usr/local/bin/

brew install --HEAD neovim
brew install rust

SAFE_RM=~/.cache/shell-safe-rm
git clone git@github.com:kaelzhang/shell-safe-rm.git $SAFE_RM
sudo cp $SAFE_RM/bin/rm.sh /bin/safe-rm
mkdir -p ~/.local/share/Trash/files
ln -s -f ~/.local/share/Trash/files ~/.trash

sudo pip install --upgrade pynvim
# sudo gem install neovim

