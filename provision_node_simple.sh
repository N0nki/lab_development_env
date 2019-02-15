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

echo "Python"
echo 'python3 -m venv ~/myenv' >> setup_myenv.sh
echo 'source ~/myenv/bin/activate' >> setup_myenv.sh
echo 'pip install --upgrade pip' >> setup_myenv.sh
echo 'pip install numpy pandas matplotlib networkx graphillion jupyter jupyte_contrib_nbextensions' >> setup_myenv.sh
echo 'jupyter contrib nbextension install --user' >> setup_myenv.sh
echo 'jupyter nbextensions_configurator enable --user' >> setup_myenv.sh
echo 'deactivate' >> setup_myenv.sh
echo 'alias myenv="source ~/myenv/bin/activate"' >>~/.bashrc
