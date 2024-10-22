#!/usr/bin/env bash

# ===================================================================
#                     Hyprland Install shellscript
#                            Franklin Souza
#                               @frannksz
# ===================================================================

# ===========================================| Criando pastas
FOLDER_CREATE(){
  clear
  mkdir $HOME/.frannksz-dotfiles
  mkdir $HOME/.compile
  mkdir $HOME/.config/hypr
  mkdir $HOME/.config/hypr/scripts
  mkdir $HOME/.config/waybar
  mkdir $HOME/.config/swaylock
  mkdir $HOME/.config/dunst
  mkdir $HOME/.config/wofi
  mkdir $HOME/.config/nvim
  mkdir $HOME/.config/kitty
  mkdir $HOME/.fonts
  mkdir $HOME/.themes
  mkdir $HOME/.icons
  mkdir $HOME/.local/bin
  mkdir $HOME/Wallpapers
  mkdir $HOME/.projects
  mkdir $HOME/Franks
  mkdir $HOME/Scripts
  mkdir -p $HOME/.config/waybar/scripts
  mkdir -p $HOME/Franks/Estudos
  mkdir -p $HOME/Franks/Projetos/Repo
}

# ===========================================| Instalando pacotes
PACKAGES_INSTALL(){
  clear && sudo pacman -S archlinux-keyring --noconfirm
  clear && sudo pacman -S rustup firefox-i18n-pt-br git dosfstools irssi npm thunderbird thunderbird-dark-reader thunderbird-i18n-pt-br gucharmap catimg wofi bitwarden qemu slurp htop unzip unrar zip p7zip tor dunst fuse mpv pacman-contrib lib32-mangohud mangohud wine-staging zathura zathura-pdf-poppler gvfs-mtp xdg-user-dirs ttf-fira-code zsh zsh-autosuggestions zsh-syntax-highlighting reflector ttf-font-awesome bc lsd yt-dlp bat net-tools wf-recorder dosfstools nodejs yarn fzf ueberzug man-db python-pywal wget pyenv ripgrep fd --noconfirm && xdg-user-dirs-update
  rustup default stable && clear
}

# ===========================================| Compilando pacotes AUR
AUR_BUILD(){
  cd $HOME/.compile
  git clone https://aur.archlinux.org/wal-telegram-git.git
  cd wal-telegram-git
  makepkg -sic --noconfirm

  cd $HOME/.compile
  git clone https://aur.archlinux.org/code-minimap-bin.git
  cd code-minimap-bin
  makepkg -sic --noconfirm

  cd $HOME/.compile
  git clone https://aur.archlinux.org/grimblast-git.git
  cd grimblast-git
  makepkg -sic --noconfirm

  cd $HOME/.compile
  git clone https://aur.archlinux.org/swaylock-effects.git
  cd swaylock-effects
  makepkg -sic --noconfirm

  clear
  cd $HOME/.projects
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git
  echo 'source ~/.projects/powerlevel10k/powerlevel10k.zsh-theme' >> $HOME/.zshrc

  clear
  cd $HOME/.projects
  git clone https://github.com/GideonWolfe/Zathura-Pywal.git
  cd Zathura-Pywal && chmod +x install.sh && ./install.sh

  # ===========================================| MyDOTFILES
  clear
  cd $HOME/.frannksz-dotfiles
  git clone https://github.com/frannksz/dotfiles.git
}

# ===========================================| Copiando arquivos
FILES_COPY(){
  clear && echo -e "[!] Copiando arquivos..." && sleep 2
  cp $HOME/.frannksz-dotfiles/dotfiles/bin/* $HOME/.local/bin && cd $HOME/.local/bin && chmod +x *
  cp $HOME/.frannksz-dotfiles/dotfiles/scripts/* $HOME/Scripts && cd $HOME/Scripts && chmod +x *
  cp $HOME/.frannksz-dotfiles/dotfiles/.fonts/* $HOME/.fonts
  cp $HOME/.frannksz-dotfiles/dotfiles/.zshrc $HOME
  cp $HOME/.frannksz-dotfiles/dotfiles/.zshenv $HOME
  cp $HOME/.frannksz-dotfiles/dotfiles/home/.zprofile $HOME
  cp $HOME/.frannksz-dotfiles/dotfiles/home/.aliases $HOME
  cp $HOME/.frannksz-dotfiles/dotfiles/home/.scripts $HOME
  cp $HOME/.frannksz-dotfiles/dotfiles/home/.emojis $HOME
  touch .zhistory $HOME
  sudo cp $HOME/.frannksz-dotfiles/dotfiles/.fonts/Iosevka-Medium.ttf /usr/share/fonts/TTF
  sudo cp $HOME/.frannksz-dotfiles/dotfiles/.fonts/Iosevka-Bold.ttf /usr/share/fonts/TTF
  sudo cp $HOME/.frannksz-dotfiles/dotfiles/.fonts/Poppins.otf /usr/share/fonts
  sudo cp $HOME/.frannksz-dotfiles/dotfiles/.fonts/MesloLGS NF Regular.ttf /usr/share/fonts/TTF
  cp $HOME/.frannksz-dotfiles/dotfiles/.config/kitty/kitty.conf $HOME/.config/kitty
  cp $HOME/.frannksz-dotfiles/dotfiles/.config/kitty/theme.conf $HOME/.config/kitty
  cp $HOME/.frannksz-dotfiles/dotfiles/.config/hypr/hyprland.conf $HOME/.config/hypr
  cp $HOME/.frannksz-dotfiles/dotfiles/.config/hypr/scripts/* $HOME/.config/hypr/scripts && chmod +x $HOME/.config/waybar/scripts/*
  cp $HOME/.frannksz-dotfiles/dotfiles/.config/hypr/hyprpaper.conf $HOME/.config/hypr
  cp $HOME/.frannksz-dotfiles/dotfiles/.config/waybar/config.jsonc $HOME/.config/waybar
  cp $HOME/.frannksz-dotfiles/dotfiles/.config/waybar/scripts/* $HOME/.config/waybar/scripts && chmod +x $HOME/.config/waybar/scripts/*
  cp $HOME/.frannksz-dotfiles/dotfiles/.config/waybar/style.css $HOME/.config/waybar
  cp $HOME/.frannksz-dotfiles/dotfiles/.config/qutebrowser/* $HOME/.config/qutebrowser
  cp $HOME/.frannksz-dotfiles/dotfiles/.config/wlogout/style.css $HOME/.config/wlogout
  cp $HOME/.frannksz-dotfiles/dotfiles/.config/swaylock/config $HOME/.config/swaylock
  cp $HOME/.frannksz-dotfiles/dotfiles/.config/wofi/* $HOME/.config/wofi
  cp $HOME/.frannksz-dotfiles/dotfiles/.config/dunst/dunstrc $HOME/.config/dunst
  cp $HOME/.frannksz-dotfiles/dotfiles/.config/dunst/launchdunst.sh $HOME/.config/dunst && chmod +x $HOME/.config/dunst/launchdunst.sh
  cp $HOME/.frannksz-dotfiles/dotfiles/home/.xcompose $HOME
  xdg-mime default org.pwmt.zathura.desktop application/pdf
  cp $HOME/.frannksz-dotfiles/dotfiles/.config/nvim/init.vim $HOME/.config/nvim
  cp $HOME/.frannksz-dotfiles/dotfiles/.config/nvim/lua-plugins $HOME/.config/nvim
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  cp -r $HOME/.local/share/nvim/site/autoload $HOME/.config/nvim
  clear && cd $HOME/Wallpapers
   wget -c "https://raw.githubusercontent.com/frannks/wallpack/main/018.png"
   wal -i $HOME/Wallpapers/018.png
   sudo pacman -S noto-fonts noto-fonts-cjk noto-fonts-emoji --noconfirm
   clear && read -p "INSTALAÇÃO FINALIZADA PRESSIONE ENTER PARA CONCLUIR!!!" && clear && exit 0
}
FOLDER_CREATE
PACKAGES_INSTALL
AUR_BUILD
FILES_COPY