
# initial config for debian

### 1. install nala
```bash
  sudo apt install nala
```
### 2. update system
```bash
  sudo nala update
```
### 3. synaptic package Manager
open the package find "gnome games" mark to uninstall

### 4. delete libre office
```bash
  sudo nala remove --purge libreoffice*
  sudo nala clean
  sudo apt autoclean
```

### 5. autoremove
open the terminal to use this command to autoremove
```bash
  sudo nala autoremove
```

### 6. install neofetch and htop
```bash
  sudo nala install neofetch && htop
```

### 7. install flatpak
flatpak
```bash
  sudo nala flatpak
```
gnome flatpak
```bash
  sudo nala gnome-software-plugin-flatpak
```
flathub repository
```bash
  flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo 
```

### 8. install apps with flatpak
go to the link and select the apps you want to install https://flathub.org/
