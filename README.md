# My own Neovim setting

## Install Neovim

### macOS

```
brew install neovim
```

### Linux

#### Ubuntu

```
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt install neovim
```

#### Fedora

```
sudo dnf install -y neovim python3-neovim
```

#### Debian

```
sudo apt-get install neovim
sudo apt-get install python-neovim
sudo apt-get install python3-neovim
```

#### CentOS 7 / RHEL 7

```
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install -y neovim python3-neovim
```

## Install vim-plug

```
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Copy Setting

```
curl -fLo ~/.config/nvim/init.vim --create-dirs \
    https://raw.githubusercontent.com/vincentinttsh/neovimSetting/master/init.vim
```

## Install dependencies

```
sudo apt install python3-pip
curl -sL install-node.now.sh/lts | bash
sudo npm install -g neovim
pip3 install pynvim
```

## Install plugin in nvim

```
:PlugInstall
:UpdateRemotePlugins
```

## Install Coc extensions

```
:CocInstall coc-clangd
:CocInstall coc-go
:CocInstall coc-python
```