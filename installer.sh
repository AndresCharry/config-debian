#!/usr/bin/env bash

# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# xorg display server installation
sudo nala install -y xorg xserver-xorg xbacklight xbindkeys xvkbd xinput

# PACKAGE INCLUDES build-essential.
sudo nala install -y build-essential

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update
mkdir ~/Screenshots/

# PICK YOUR X11 Window Managers (Uncomment if you want these installed)
# bash ~/bookworm-scripts/resources/bspwm-commands
# bash ~/bookworm-scripts/resources/dk-commands
# bash ~/bookworm-scripts/resources/dwm-commands
bash ~/bookworm-scripts/resources/qtile-commands
# bash ~/bookworm-scripts/resources/i3-commands

# XFCE4 Minimal
# sudo nala install -y xfce4 xfce4-goodies

# Network File Tools/System Events
sudo nala install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Networking etc
sudo nala install -y policykit-1-gnome network-manager network-manager-gnome

# Thunar
sudo nala install -y thunar thunar-archive-plugin thunar-volman file-roller

# Terminal (eg. terminator,kitty,xfce4-terminal)
sudo nala install -y kitty tilix xfce4-terminal 

# Sound packages
sudo nala install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa pamixer

# Neofetch
sudo nala install -y neofetch

# Installation for Appearance management
sudo nala install -y lxappearance 

# Browser Installation (eg. chromium)
sudo nala install -y firefox-esr 

# Desktop background browser/handler 
# feh --bg-fill /path/to/directory 
# sudo nala install -y nitrogen 
sudo nala install -y feh

# Fonts and icons for now
sudo nala install -y fonts-recommended fonts-ubuntu fonts-font-awesome fonts-terminus papirus-icon-theme

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first' 
sudo nala install -y exa


# Printing and bluetooth (if needed)
sudo nala install -y cups system-config-printer simple-scan
sudo nala install -y bluez blueman

sudo systemctl enable cups
sudo systemctl enable bluetooth

# Packages needed for window manager installation
sudo nala install -y picom rofi dunst libnotify-bin unzip wmctrl xdotool libnotify-dev

# Geany Text Editor, text editor, markdown editor
# sudo nala install -y geany 
# sudo nala install -y geany-plugin-addons geany-plugin-git-changebar geany-plugin-overview geany-plugin-spellcheck geany-plugin-treebrowser geany-plugin-vimode
# sudo nala install -y geany-plugins \ # all plugins
# sudo nala install -y mousepad ghostwriter
# sudo nala install -y l3afpad

# My Favorites
# Multimedia/GFX
sudo nala install -y mpv qimgv scrot gimp obs-studio mkvtoolnix-gui redshift eog brightnessctl

# PDF 
sudo nala install -y  evince pdfarranger

# Others
sudo nala install -y numlockx figlet galculator cpu-x udns-utils whois curl tree

# Install Lightdm Console Display Manager
sudo nala install -y lightdm lightdm-gtk-greeter-settings
sudo systemctl enable lightdm

# Install the Ly Console Display Manager
# bash ~/bookworm-scripts/ly.sh


########################################################
# End of script for default config
#

## These two scripts will install nerdfonts and copy my configuration files into the ~/.config directory
## Configuration uses 

bash ~/bookworm-scripts/resources/nerdfonts.sh

\cp ~/bookworm-scripts/resources/.bashrc ~


sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
