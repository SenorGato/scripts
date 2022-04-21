!#/bin/sh
#YCM requirements
apt-get update
apt install mono-complete golang nodejs default-jdk npm cmake python3-dev nvim build-essential python3.9-dev

#Repo clone
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
cd ~
echo ".cfg" >> .gitignore
git clone --bare https://github.com/SenorGato/dotfiles $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
config config --local status.showUntrackedFiles no

#Plug init
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim "+PlugInstall" "qa"

#YCM install
cd ~/.vim/plugged/youcompleteme
python3 install.py --all
