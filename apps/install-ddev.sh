#!/usr/bin/env bash

# Add DDEV releases to your package repository
sudo sh -c 'echo ""'
echo '[ddev]
name=ddev
baseurl=https://pkg.ddev.com/yum/
gpgcheck=0
enabled=1' | sed 's/^ \+//' | sudo tee /etc/yum.repos.d/ddev.repo >/dev/null

# Install DDEV
sudo sh -c 'echo ""'
sudo dnf install --refresh ddev -y

# One-time initialization of mkcert
mkcert -install
