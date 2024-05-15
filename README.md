# initial config for debian
### 1. custom shortcuts
- go to keybord
- go to keybord shortcuts
- go to custom shortcuts
- add
- name = Terminal
- command = gnome-terminal
- shortcuts = Ctrl + Alt + T 

### 2. install nala
```bash
  sudo apt install nala
``` 

### 3. update system
```bash
  sudo nala update
```

### 4. synaptic package Manager
open the package find "gnome games" mark to uninstall

### 5. delete libre office
```bash
  sudo nala remove --purge libreoffice*
  sudo nala clean
  sudo apt autoclean
```

### 6. autoremove
open the terminal to use this command to autoremove
```bash
  sudo nala autoremove
```

### 7. install neofetch and htop
```bash
  sudo nala install neofetch && htop
```

### 8. install flatpak
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

### 9. install apps with flatpak
go to the link and select the apps you want to install https://flathub.org/
