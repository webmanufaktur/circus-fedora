# Missing Apps for Your Fedora Setup

Based on your current app collection, here are essential apps you might be missing for a complete Fedora experience, organized by category and priority.

## 🚀 High Priority Essentials

### Office & Productivity
- **LibreOffice** - Complete office suite (Writer, Calc, Impress, Draw)
  ```bash
  sudo dnf install libreoffice -y
  ```
- **OnlyOffice** - Modern alternative to LibreOffice with better MS Office compatibility
  ```bash
  sudo dnf install onlyoffice-desktopeditors -y
  ```

### Development Tools
- **Visual Studio Code** - Popular code editor with extensive extensions
  ```bash
  sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
  sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
  sudo dnf install code -y
  ```
- **Node.js & npm** - JavaScript runtime and package manager
  ```bash
  sudo dnf install nodejs npm -y
  ```
- **Python development tools**
  ```bash
  sudo dnf install python3-pip python3-devel python3-venv -y
  ```

### System Administration
- **Timeshift** - System backup and restore tool
  ```bash
  sudo dnf install timeshift -y
  ```
- **GParted** - Partition manager for disk management
  ```bash
  sudo dnf install gparted -y
  ```
- **Neofetch** - System information tool (alternative to fastfetch)
  ```bash
  sudo dnf install neofetch -y
  ```

## 🎯 Medium Priority

### Media & Graphics
- **VLC Media Player** - Versatile media player
  ```bash
  sudo dnf install vlc -y
  ```
- **GIMP** - Professional image editing software
  ```bash
  sudo dnf install gimp -y
  ```
- **Inkscape** - Vector graphics editor
  ```bash
  sudo dnf install inkscape -y
  ```
- **Kdenlive** - Video editing software
  ```bash
  sudo dnf install kdenlive -y
  ```

### Security & Privacy
- **KeePassXC** - Password manager
  ```bash
  sudo dnf install keepassxc -y
  ```
- **VeraCrypt** - File encryption tool
  ```bash
  sudo dnf install veracrypt -y
  ```

### File Management
- **Double Commander** - Dual-pane file manager
  ```bash
  sudo dnf install doublecmd-gtk -y
  ```
- **Ranger** - Terminal file manager
  ```bash
  sudo dnf install ranger -y
  ```

## 🎮 Gaming & Entertainment
- **Steam** - Gaming platform
  ```bash
  sudo dnf install steam -y
  ```
- **Discord** - Communication platform (gaming and general)
  ```bash
  flatpak install flathub com.discordapp.Discord -y
  ```

## 🔧 Advanced Tools

### Network & Development
- **Wireshark** - Network protocol analyzer
  ```bash
  sudo dnf install wireshark -y
  sudo usermod -a -G wireshark $USER
  ```
- **DBeaver** - Database management tool
  ```bash
  flatpak install flathub io.dbeaver.DBeaverCommunity -y
  ```
- **Postman** - API development tool
  ```bash
  flatpak install flathub com.getpostman.Postman -y
  ```

### Audio & Video Production
- **Audacity** - Audio editing software
  ```bash
  sudo dnf install audacity -y
  ```
- **OBS Studio** - Screen recording and streaming
  ```bash
  sudo dnf install obs-studio -y
  ```

## 📚 Knowledge & Learning
- **Obsidian** - Knowledge management and note-taking
  ```bash
  flatpak install flathub md.obsidian.Obsidian -y
  ```
- **Anki** - Flashcard software for learning
  ```bash
  flatpak install flathub net.ankiweb.Anki -y
  ```

## 🌐 Internet & Communication
- **Thunderbird** - Email client (if you prefer over Betterbird)
  ```bash
  sudo dnf install thunderbird -y
  ```
- **Element** - Matrix client for secure messaging
  ```bash
  flatpak install flathub io.element.Element -y
  ```

## 🛠️ System Utilities
- **Stacer** - System optimizer and monitoring tool
  ```bash
  sudo dnf install stacer -y
  ```
- **BleachBit** - System cleaner and privacy tool
  ```bash
  sudo dnf install bleachbit -y
  ```
- **OpenSSH Server** - For remote access to your machine
  ```bash
  sudo dnf install openssh-server -y
  sudo systemctl enable --now sshd
  ```

## 📦 Package Management
- **Flatpak** (if not already installed)
  ```bash
  sudo dnf install flatpak -y
  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  ```
- **Snap** (alternative package manager)
  ```bash
  sudo dnf install snapd -y
  sudo ln -s /var/lib/snapd/snap /snap
  ```

## 🎨 Themes & Customization
- **GNOME Shell Extensions** (additional to Extension Manager)
  ```bash
  sudo dnf install gnome-shell-extension-common -y
  ```
- **Additional GTK themes**
  ```bash
  sudo dnf install gnome-themes-extra -y
  ```

## 📋 Installation Priority Guide

### Install First (Essential):
1. LibreOffice or OnlyOffice
2. Visual Studio Code
3. Node.js & Python tools
4. Timeshift
5. KeePassXC

### Install Second (Highly Recommended):
1. VLC Media Player
2. GIMP
3. Double Commander
4. Steam (if you game)
5. Discord

### Install Later (As Needed):
1. Specialized development tools
2. Advanced media production software
3. Network analysis tools
4. Additional themes and extensions

## 🔍 Notes

- Some apps are available both as `dnf` packages and Flatpaks. Flatpaks often provide more recent versions and better sandboxing.
- For development tools, consider using Flatpak versions to avoid system conflicts.
- Always enable RPM Fusion for additional multimedia codecs and proprietary software:
  ```bash
  sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
  sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
  sudo dnf groupupdate sound-and-video -y
  ```

This list should give you a comprehensive foundation for a productive Fedora setup!
