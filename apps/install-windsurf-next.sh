#!/usr/bin/env bash

sudo rpm --import https://windsurf-stable.codeiumdata.com/mQfcApCOdSLoWOSI/yum/RPM-GPG-KEY-windsurf

echo -e "[windsurf-next]
name=Windsurf Next Repository
baseurl=https://windsurf-stable.codeiumdata.com/mQfcApCOdSLoWOSI/yum/repo/
enabled=1
autorefresh=1
gpgcheck=1
gpgkey=https://windsurf-stable.codeiumdata.com/mQfcApCOdSLoWOSI/yum/RPM-GPG-KEY-windsurf" | sudo tee /etc/yum.repos.d/windsurf-next.repo > /dev/null

sudo dnf check-update

sudo dnf install -y windsurf-next