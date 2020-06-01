#anaconda_url=https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh


echo "Install Anaconda"
anaconda_url=https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
cd /tmp
curl -O $anaconda_url
#sudo bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda
bash Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda
#Restart terminal
source ~/.bashrc