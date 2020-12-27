#!/bin/bash

DATE=${DATE:-$(date '+%Y%m%d-%H-%M-%S')}

echo "=> Deploy vim configs"

if [[ -f ~/.vimrc || -L ~/.vimrc ]]; then
    echo "==> Backup ~/.vimrc"
    mv ~/.vimrc ~/.vimrc.bk-$DATE
fi

echo "==> Soft link .vimrc here"
ln -s $(pwd)/.vimrc ~/.vimrc
