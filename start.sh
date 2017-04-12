setxbmap fi
sudo apt-get update
sudo apt-get -y install puppet git
git clone https://github.com/EuleT/Laksyt.git
cd Laksyt
sudo puppet apply -e 'class {paras:}'
