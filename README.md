# VIM + Vundle Setup.

## Installation


1. Download

```
wget -O install.sh https://raw.githubusercontent.com/byjamaljama/vim/main/install.sh
```

2. Make it executable

```
chmod u+x install.sh
```

3. Run

```
./install.sh
```

4. Open vim and install the bundle 

```
vim
:PluginInstall
```

5. Install YCM

```
cd ~/.vim/bundle/YouCompleteMe
# You may need to install cmake if not installed.
#sudo pip install cmake

# Install YouCompleteMe
python3 install.py --all
```
