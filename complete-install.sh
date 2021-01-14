# I asume you are on a Arch based system. For Ubuntu / Mint distros some modifications in this script are necessary.

sudo su

# i) Update Packages

pacman -Syu

# ii) Dotfiles and Default Scripts

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh


git clone https://github.com/jvcanavarro/canadots.git
cd Canadots
cp -r .config ~/.config
cp .bashrc ~
cp my_configs.vim ~/.vim_runtime

https://github.com/lervag/vimtex.git ~/.vim_runtime/my_plugins

# iii) Personal Preferred Applications

pacman -S htop ranger awesome terminator fish neofetch firefox python-pip python2-pip lein tex nvidia nvidia-libgl lib32-nvidia-utils lib32-nvidia-libgl lib32-mesa-demos libva-vdpau-driver nvidia-settings flameshot tree

systemctl enable nvidia-persistenced.service

# iv) University Necessities

# Python Packages
# Any necessary software for classes

# v) Random Stuff

yay ufetch google-chrome spotify telegram compton-tryone la capitaine arc fontconfig
