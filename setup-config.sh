cp ./.screenrc ~/.screenrc
cp ./.bashrc ~/.bashrc
cp ./.vimrc ~/.vimrc
cd

sudo apt install exuberant-ctags
sudo apt install silversearcher-ag

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
cd ~/.vim/bundle/vimproc.vim/
make
cd
