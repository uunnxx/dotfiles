sudo apt install \
  automake \
  bison \
  build-essential \
  cmake \
  bat \
  ubuntu-restricted-extras \
  compton \
  curl \
  diodon \
  dirmngr \
  dunst \
  feh \
  flameshot \
  fop \
  fzf \
  gawk \
  git-core \
  gpg \
  i3 \
  i3lock-fancy \
  i3status \
  libbz2-dev \
  libcurl4-openssl-dev \
  libffi-dev \
  libfontconfig1-dev \
  libfreetype6-dev \
  libgdbm-dev \
  liblzma-dev
  libncurses5-dev \
  libncursesw5-dev \
  libreadline-dev \
  libsqlite3-dev \
  libssl-dev \
  libtool \
  libxcb-keysyms1-dev \
  libxcb-util-dev \
  libxcb-xfixes0-dev \
  libxcb1-dev \
  libxkbcommon-dev \
  libxkbcommon-x11-dev \
  libxml2 \
  libxml2-dev \
  libxml2-utils \
  libxmlsec1-dev \
  libxslt1-dev \
  libyaml-dev \
  llvm \
  make \
  mpv \
  pavucontrol \
  pkg-config \
  ranger \
  redshift \
  ripgrep \
  rofi-dev &&
  rxvt-unicode-256color \
  software-properties-common \
  sqlite3 \
  tk-dev \
  vim \
  wget \
  xclip \
  xsel \
  xsltproc \
  xz-utils \
  zathura-dev \
  zathura-djvu \
  zathura-ps \
  zlib1g-dev \
  zsh \
  echo 'INSTALLED ALL APT PACKAGES'

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo chsh -s $(which zsh)

# syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# fzf-tab
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab

# asdf vm

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1 && \
  asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git  && \
  asdf plugin-add ruby && \
  asdf plugin-add python && \
  asdf plugin-add neovim && \
  asdf plugin-add erlang && \
  asdf plugin-add elixir && \
  asdf plugin-add rust && \
  asdf plugin-add golang && \
  echo 'ASDF PLUGINS ADDED' && \
  asdf install nodejs latest && \
  asdf install ruby latest && \
  asdf install python latest && \
  asdf install python 2.7-dev && \
  asdf install nightly && \
  asdf install erlang latest && \
  asdf install elixir latest && \
  asdf install rust latest && \
  asdf install golang latest && \
  echo 'ASDF LATEST VERSION OF PACKAGES INSTALLED'




mkdir $HOME/dots && \
  cd $HOME/dots && \
  git clone https://github.com/uunnxx/configs.git && \
  echo 'CONFIGS CLONED' && \
  git clone https://github.com/uunnxx/dotfiles.git && \
  echo 'DOTFILES CLONED' && \
  ln -sf $HOME/dots/dotfiles/.vimrc $HOME && \
  ln -sf $HOME/dots/dotfiles/.aliases.zsh $HOME && \
  ln -sf $HOME/dots/dotfiles/.xinitrc $HOME && \
  ln -sf $HOME/dots/dotfiles/.xinputrc $HOME && \
  ln -sf $HOME/dots/dotfiles/.Xmodmap $HOME && \
  ln -sf $HOME/dots/dotfiles/.xmodmap_example $HOME && \
  ln -sf $HOME/dots/dotfiles/.Xresources $HOME && \
  ln -sf $HOME/dots/dotfiles/.zshrc $HOME && \
  echo 'SYMLINK DOTS' && \
  ln -sf $HOME/dots/configs/alacritty $HOME/.config/ && \
  ln -sf $HOME/dots/configs/bat $HOME/.config/ && \
  ln -sf $HOME/dots/configs/fcitx $HOME/.config/ && \
  ln -sf $HOME/dots/configs/i3 $HOME/.config/ && \
  ln -sf $HOME/dots/configs/mpv $HOME/.config/ && \
  ln -sf $HOME/dots/configs/nvim $HOME/.config/ && \
  ln -sf $HOME/dots/configs/rofi $HOME/.config/ && \
  ln -sf $HOME/dots/configs/scripts $HOME/.config/ && \
  ln -sf $HOME/dots/configs/zathura $HOME/.config/ && \
  echo 'SYMLINK CONFIG FILES'


mkdir -p $HOME/.local/share/fonts/Iosevka && \
  cp $HOME/dots/fonts/Iosevka.zip $HOME/.local/share/fonts/Iosevka && \
  cd $HOME/.local/share/fonts/Iosevka && \
  unzip Iosevka.zip && \
  rm Iosevka.zip && \
  echo "IOSEVKA INSTALLED"


mkdir -p $HOME/.local/share/fonts/Hack && \
  cp $HOME/dots/fonts/Hack.zip $HOME/.local/share/fonts/Hack && \
  cd $HOME/.local/share/fonts/Hack && \
        unzip Hack.zip && \
  rm Hack.zip && \
  echo "HACK INSTALLED"

mkdir -p $HOME/.local/share/fonts/FiraCode && \
  cp $HOME/dots/fonts/FiraCode.zip $HOME/.local/share/fonts/FiraCode && \
  cd $HOME/.local/share/fonts/FiraCode && \
  unzip FiraCode.zip && \
  rm FiraCode.zip && \
  echo "FIRACODE INSTALLED"

fc-cache -f $HOME/.local/share/fonts/
echo "fc-cache -f $HOME/.local/share/fonts/"
# fc-list | grep Iosevka
# fc-list | grep Hack
# fc-list | grep FiraCode

# VIM

# vim-plug for vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# vim-plug for neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

pip2 install neovim
pip install neovim
gem install neovim
npm install -g neovim


xrdb -merge $HOME/.Xresources

sudo snap install alacritty --classic

cargo install --features i3 wmfocus
cargo install alacritty
