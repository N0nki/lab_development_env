#!/bin/sh

echo "                       _     _                               _      ";
echo "                      (_)   (_)                             | |     ";
echo "  _ __  _ __ _____   ___ ___ _  ___  _ __    _ __   ___   __| | ___ ";
echo " | '_ \| '__/ _ \ \ / / / __| |/ _ \| '_ \  | '_ \ / _ \ / _\` |/ _ \\";
echo " | |_) | | | (_) \ V /| \__ \ | (_) | | | | | | | | (_) | (_| |  __/";
echo " | .__/|_|  \___/ \_/ |_|___/_|\___/|_| |_| |_| |_|\___/ \__,_|\___|";
echo " | |                                    ______                      ";
echo " |_|                                   |______|                     ";

echo "clone dotfiles"
cd ~/
git clone https://github.com/N0nki/dotfiles

echo "Cica font"
wget https://github.com/miiton/Cica/releases/download/v4.1.1/Cica-v4.1.1.zip
unzip Cica-v4.1.1.zip
mkdir -p ~/.fonts/
mv Cica-*.ttf ~/.fonts/
sudo fc-cache -fv
UUID=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \')
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ font "Cica 15"

echo "install vim"
git clone https://github.com/vim/vim.git
cd ~/vim
git pull
cd ~/vim/src/
./configure --with-features=huge --enable-gui=gnome2 --enable-perlinterp --enable-pythoninterp --enable-python3interp --enable-rubyinterp --enable-luainterp --with-luajit --enable-fail-if-missing
make
sudo make install
cd ~/

echo "Python"
echo 'python3 -m venv ~/myenv' >> setup_myenv.sh
echo 'source ~/myenv/bin/activate' >> setup_myenv.sh
echo 'pip install --upgrade pip' >> setup_myenv.sh
echo 'pip install -r ~/dotfiles/python/lab_ubuntu/requirements.txt' >> setup_myenv.sh
echo 'jupyter contrib nbextension install --user' >> setup_myenv.sh
echo 'jupyter nbextensions_configurator enable --user' >> setup_myenv.sh
echo 'deactivate' >> setup_myenv.sh
source ./setup_myenv.sh
echo 'alias myenv="source ~/myenv/bin/activate"' >>~/.bashrc

echo "glpk"
wget http://ftp.gnu.org/gnu/glpk/glpk-4.61.tar.gz
gzip -d glpk-4.61.tar.gz
tar -x < glpk-4.61.tar
cd glpk-4.61
./configure
make
make check
sudo make install
ldconfig
