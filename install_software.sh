#!/bin/bash

echo "[+] Apt-Get software"
SOFTWARE=(
        build-essential
        chromium-browser
        cmake
        gdb
        git
        i3
        libiw-dev
        lxrandr
        mutt
        python
        python-dev
        python3-netifaces
        python3-pip
        python3-psutil
        ranger
        rxvt-unicode-256color
        tmux
        emacs
        vim
        vim-gnome
        vlc
        zsh
    )
apt-get install $SOFTWARE

# We install our i3 bar replacement
# This should be as much as possible installed with apet-get
PIP3_SOFTWARE=(
    i3pystatus
    basiciw
    colour
    )
sudo pip3 install $PIP3_SOFTWARE

echo "[+] Creating private binary folder"
mkdir -p ~/bin/
chmod 700 ~/bin
