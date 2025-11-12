#!/usr/bin/env bash

set -euo pipefail

sudo groupadd docker

sudo usermod -aG docker $USER

sudo systemctl enable docker.service
sudo systemctl enable containerd.service
sudo systemctl start docker.service
sudo systemctl start containerd.service
