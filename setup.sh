sudo su

dpkg --add-architecture i386
apt update
apt-get -yq install libc6:i386 libncurses5:i386 libstdc++6:i386
apt-get -yq install libc6-dev-i386

apt-get -yq install gcc vim git clang llvm nasm make python-pip
pip install --upgrade pip

git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit

git clone https://github.com/radare/radare2
cd radare2
./sys/install.sh

cd
git clone https://github.com/Z3Prover/z3.git
cd z3
python scripts/mk_make.py
cd build
make install
python ../scripts/mk_make.py --python

cd
wget http://software.intel.com/sites/landingpage/pintool/downloads/pin-3.2-81205-gcc-linux.tar.gz
tar -xvf pin-3.2-81205-gcc-linux.tar.gz

exit
