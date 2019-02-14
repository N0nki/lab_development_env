#!/bin/sh

echo "                       _     _                               _   ";
echo "                      (_)   (_)                             | |  ";
echo "  _ __  _ __ _____   ___ ___ _  ___  _ __    _ __ ___   ___ | |_ ";
echo " | '_ \| '__/ _ \ \ / / / __| |/ _ \| '_ \  | '__/ _ \ / _ \| __|";
echo " | |_) | | | (_) \ V /| \__ \ | (_) | | | | | | | (_) | (_) | |_ ";
echo " | .__/|_|  \___/ \_/ |_|___/_|\___/|_| |_| |_|  \___/ \___/ \__|";
echo " | |                                    ______                   ";
echo " |_|                                   |______|                  ";

echo "update package"
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
apt-get install -y ubuntu-desktop

echo "development environment"
apt-get install -y libssl-dev libreadline-dev zlib1g-dev build-essential libsqlite3-dev libgdbm-dev libbz2-dev sqlite3 tk-dev zip python3-dev python-dev python3-pip python-pip python3-venv python3-tk git language-pack-ja-base language-pack-ja ibus-mozc gettext libncurses5-dev libacl1-dev libgpm-dev libxmu-dev libgnomeui-dev libxpm-dev libperl-dev ruby-dev lua5.2 liblua5.2-dev luajit libluajit-5.1

source /etc/default/locale

echo "install neovim"
apt-get install -y --allow-unauthenticated software-properties-common
add-apt-repository -y ppa:neovim-ppa/unstable
apt-get -y update
apt-get install -y --allow-unauthenticated neovim
