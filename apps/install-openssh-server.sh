#!/usr/bin/env bash
set -euo pipefail

sudo dnf install openssh-server -y
sudo systemctl enable --now sshd
