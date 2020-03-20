  ### UPDATE & DOWNLOAD-SETUP
  sudo apt update -y ;
  sudo apt-get update -y ;
  sudo apt-get install wget -y ;
  sudo apt-get install snapd -y ;

  ### STYLE & LAYOUT

  #PopOS Icons
  sudo add-apt-repository ppa:system76/pop -y ;
  sudo apt install pop-icon-theme -y ;
  #LibreOffice - Sifr Layout Style
  sudo apt-get install libreoffice-style-sifr -y ;
  
  #Put Styles into folders
  cd Theme_Cursor ; 
  sudo cp -r ./Bibata_Pink ./usr/share/icons/ -y ;
  sudo cp -r ./CGreen ./usr/share/themes/ -y ; 
  sudo cp -r ./Pop /usr/share/icons/ -y ; 
  sudo cp ./Bibata_Pink /usr/share/icons/ ;
  cd .. ;

  #Workspace Background Switcher
  # git clone https://github.com/smurphos/nemo_actions_and_cinnamon_scripts.git ;
  mkdir ~/.local/bin ;
  cd ./Workspace_Background_Switcher ; 
  cp ./workspace_background_switcher.sh ~/.local/bin/ ;
  cp -r ./workspace_background_switcher.desktop ~/.config/autostart ;
  cp 1.jpg 2.jpg 3.jpg 4.jpg ~/Pictures ;
  cd .. ;

  #PLANK
  sudo apt-get install plank -y ;  

  ### TERMINAL & EDITOR

  #Git
  sudo apt-get install git -y ;
  #HTOP
  sudo apt-get install htop -y ;
  #cmatrix
  sudo apt-get install cmatrix -y ;
  # VIM
  sudo apt-get install vim ;
  # VSCODE
  sudo apt-get install apt-transport-https -y ;
  sudo apt-get install code -y ;
  # VIM
  sudo apt-get install vim -y ;
  #TERMINATOR\
  sudo apt-get install terminator -y ;
  gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/terminator ;
  gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x" ;
  gsettings set org.cinnamon.desktop.default-applications.terminal exec /usr/bin/terminator ;
  #ZSH 
  sudo apt-get install zsh -y ;
  zsh --version ;
  chsh -s $(which zsh) ; # change default shell (requires restart)
  mv ./.zshrc $HOME ; 
  #OH-MY-ZSH
  sudo apt-get install powerline fonts-powerline -y ;
  git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh ;
  git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins ;   #Plugin - syntax-highlighting
  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins ;   #Plugin - auto-suggestions

  ### UTILITIES ()

  #GPARTED
  sudo apt-get install gparted -y ;
  #YANDEX_DISK - After install, run "yandex-disk setup"
  sudo echo "deb http://repo.yandex.ru/yandex-disk/deb/ stable main" | sudo tee -a /etc/apt/sources.list.d/yandex.list > /dev/null ;
  wget http://repo.yandex.ru/yandex-disk/YANDEX-DISK-KEY.GPG -O- | sudo apt-key add - ;
  sudo apt-get install -y yandex-disk ;
  
  ### WEB & MEDIA PROGRAMS

  #CHROMIUM
  sudo snap install chromium -y ;
  #OPERA
  sudo snap install opera -y ;

  #INKSCAPE
  sudo snap install inkscape -y ;
  #KRITA
  sudo snap install krita -y ;

  #VLC
  sudo snap install vlc -y ;  
  #AUDACITY
  sudo apt-get install audacity -y ;
  #AUDIO_RECORDER
  sudo apt-add-repository ppa:audio-recorder/ppa -y ;
  sudo apt-get install audio-recorder -y ;
  
  #Reboot
  sudo reboot
  


