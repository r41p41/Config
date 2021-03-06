sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get -yq install libc6:i386 libncurses5:i386 libstdc++6:i386
sudo apt-get -yq install libc6-dev-i386

sudo apt-get -yq install gcc vim git gdb clang llvm nasm make python-pip radare2 libssl-dev libffi-dev build-essential python-dev
sudo pip install --upgrade pip
sudo pip install --upgrade pwntools

git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit

sudo pip install z3

cd
wget http://software.intel.com/sites/landingpage/pintool/downloads/pin-3.2-81205-gcc-linux.tar.gz
tar -xvf pin-3.2-81205-gcc-linux.tar.gz
rm pin-3.2-81205-gcc-linux.tar.gz
