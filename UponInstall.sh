#! /bin/bash
read -s -k $'?Blibdootfiles will be installed now. Press any key to continue.\n'
sudo ./1_InstallPrereqs.sh 

read -s -k $'?Press any key to continue.\n'

./2_InstallBrew.sh  
read -s -k $'?Press any key to continue.\n'
./3_InstallZshPluginRepos.sh
read -s -k $'?Press any key to continue.\n' 
./4_FinalZshrcConfs.sh

read -s -k $'?Install completed.\n'