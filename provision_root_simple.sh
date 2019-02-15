#!/bin/sh

echo "                       _     _                               _   ";
echo "                      (_)   (_)                             | |  ";
echo "  _ __  _ __ _____   ___ ___ _  ___  _ __    _ __ ___   ___ | |_ ";
echo " | '_ \| '__/ _ \ \ / / / __| |/ _ \| '_ \  | '__/ _ \ / _ \| __|";
echo " | |_) | | | (_) \ V /| \__ \ | (_) | | | | | | | (_) | (_) | |_ ";
echo " | .__/|_|  \___/ \_/ |_|___/_|\___/|_| |_| |_|  \___/ \___/ \__|";
echo " | |                                    ______                   ";
echo " |_|                                   |______|                  ";
echo "                       _                 _      ";
echo "                   ___(_)_ __ ___  _ __ | | ___ ";
echo "                  / __| | '_ \` _ \| '_ \| |/ _ \\";
echo "                  \__ \ | | | | | | |_) | |  __/";
echo "                  |___/_|_| |_| |_| .__/|_|\___|";
echo "                                  |_|           ";

echo "update package"
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
apt-get install -y ubuntu-desktop

echo "development environment"
apt-get install -y libssl-dev libreadline-dev zlib1g-dev build-essential libsqlite3-dev libgdbm-dev libbz2-dev sqlite3 tk-dev zip python3-dev python-dev python3-pip python-pip python3-venv python3-tk git language-pack-ja-base language-pack-ja ibus-mozc gettext libncurses5-dev libacl1-dev libgpm-dev libxmu-dev libgnomeui-dev libxpm-dev
