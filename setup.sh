sudo su

dpkg --add-architecture i386
apt update
apt-get -yq install libc6:i386 libncurses5:i386 libstdc++6:i386
apt-get -yq install libc6-dev-i386

apt-get -yq install gcc vim git gdb clang llvm nasm make python-pip radare2
pip install --upgrade pip

exit

git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit

git clone https://github.com/Z3Prover/z3.git
cd z3
python scripts/mk_make.py
cd build
sudo make install

cd
wget http://software.intel.com/sites/landingpage/pintool/downloads/pin-3.2-81205-gcc-linux.tar.gz
tar -xvf pin-3.2-81205-gcc-linux.tar.gz
rm pin-3.2-81205-gcc-linux.tar.gz
