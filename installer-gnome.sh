# nala
sudo apt install -y nala
# delete libre office
sudo nala remove --purge libreoffice*
# neofetch
sudo nala install -y neofetch 
# htop
sudo nala install -y htop
# flatpak
sudo nala install -y flatpak
sudo nala install -y gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo 
# autoremove
sudo nala autoremove -y
