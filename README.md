# Fedora Circus

A collection of automated installation scripts for setting up a complete Fedora Linux environment with essential applications and development tools.

## Overview

This repository provides modular bash scripts to install popular applications on Fedora Linux. Each script is focused on installing a single application, making it easy to customize your setup by running only the installers you need.

## Quick Start

### Install Everything
```bash
bash install-all.sh
```

### Install Individual Apps
```bash
bash apps/install-[appname].sh
```

### Test Script Syntax
```bash
bash -n apps/install-[appname].sh
```

## Available Applications

### 🌐 Browsers
- **Brave** - Privacy-focused web browser
- **Google Chrome** - Google's web browser
- **Zen Browser** - Privacy-focused Firefox-based browser

### 💻 Development Tools
- **Git** - Version control system
- **Curl** - Data transfer utility
- **Wget** - File retrieval utility
- **Docker** - Container platform (2-part installation)
- **DDEV** - Local web development environment
- **Windsurf Next** - Code editor
- **Webfont Bundler** - Font optimization tool

### 🛡️ Security & Privacy
- **KeePassXC** - Password manager
- **Cryptomator** - Client-side encryption
- **Mullvad VPN** - Privacy-focused VPN service
- **BleachBit** - System cleaner

### 📁 File Management
- **FileZilla** - FTP client

### 🎨 Productivity & Utilities
- **Alacritty** - GPU-accelerated terminal emulator
- **Kitty** - Fast, feature-rich terminal emulator
- **Fastfetch** - System information tool
- **htop** - Process viewer
- **GNOME Tweaks** - GNOME customization tool
- **Extension Manager** - GNOME Shell extensions manager
- **OpenSSH Server** - SSH server for remote access

### 📧 Communication
- **Betterbird** - Enhanced email client based on Thunderbird
- **Telegram** - Messaging app
- **Signal** - Secure messaging app

### 🎵 Media & Entertainment
- **Parabolic** - Video downloader

### 📝 Knowledge Management
- **Obsidian** - Note-taking and knowledge management

## Project Structure

```
├── apps/                    # Individual installer scripts
│   ├── install-[appname].sh  # Application-specific installers
├── AGENTS.md               # Development guidelines
├── install-all.sh          # Master installer script
└── README.md               # This file
```

## Development Guidelines

This project follows strict bash scripting conventions:
- Uses `#!/usr/bin/env bash` shebang
- Includes `set -euo pipefail` for error handling
- 2-space indentation
- Proper variable quoting and modern bash syntax

See [AGENTS.md](AGENTS.md) for complete development guidelines.

## System Requirements

- Fedora Linux (latest stable version recommended)
- `sudo` access for package installation
- Internet connection for downloading packages

## Contributing

1. Follow the naming convention: `install-[appname].sh`
2. Use the established code style and error handling patterns
3. Test scripts with `bash -n` before submitting
4. Keep installers focused on single applications

## License

This project is provided as-is for educational and personal use.