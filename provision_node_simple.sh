#!/bin/sh

echo "                       _     _                               _      ";
echo "                      (_)   (_)                             | |     ";
echo "  _ __  _ __ _____   ___ ___ _  ___  _ __    _ __   ___   __| | ___ ";
echo " | '_ \| '__/ _ \ \ / / / __| |/ _ \| '_ \  | '_ \ / _ \ / _\` |/ _ \\";
echo " | |_) | | | (_) \ V /| \__ \ | (_) | | | | | | | | (_) | (_| |  __/";
echo " | .__/|_|  \___/ \_/ |_|___/_|\___/|_| |_| |_| |_|\___/ \__,_|\___|";
echo " | |                                    ______                      ";
echo " |_|                                   |______|                     ";
echo "                       _                 _      ";
echo "                   ___(_)_ __ ___  _ __ | | ___ ";
echo "                  / __| | '_ \` _ \| '_ \| |/ _ \\";
echo "                  \__ \ | | | | | | |_) | |  __/";
echo "                  |___/_|_| |_| |_| .__/|_|\___|";
echo "                                  |_|           ";

# pip3 install --upgrade pip
pip3 install numpy pandas matplotlib networkx graphillion ipython jupyter jupyter_contrib_nbextensions --user
jupyter contrib nbextension install --user
jupyter nbextensions_configurator enable --user
