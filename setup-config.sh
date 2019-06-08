cp ./.screenrc ~/.screenrc
cp ./.bashrc ~/.bashrc
cp ./.vimrc ~/.vimrc
cd

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
