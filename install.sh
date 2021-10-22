#/bin/bash

mk_random_no_0_500() {
  echo $(( $RANDOM % 500 ))
}

echo "################################"
echo "## DOWNLOADING                ##"
echo "################################"

cd ~

if [ -e ~/.vimrc ]; then
  echo "## Backingup old .vimrc, OK."
  mv .vmrc .backup.vimrc.$RANDOM
fi

wget -O .vimrc https://raw.githubusercontent.com/byjamaljama/vim/main/.vimrc

if [ -e ~/.vim/bundle ]; then
  echo "## Backingup old Vundle, OK."
  mv ~/.vim/bundle ~/.vim/bundle.backup.$RANDOM
fi

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "################################"
echo "## 2. INSTRUCTIONS            ##"
echo "################################"

echo "1. Open vim and run :PluginInstall"
echo "2. cd ~/.vim/bundle/YouCompleteMe"
echo "3. run python3 install.py --all"
