#!/bin/bash

DATE=${DATE:-$(date '+%Y%m%d-%H-%M-%S')}

echo "=> Deploy tmux configs"

if [[ -f ~/.tmux.conf || -L ~/.tmux.conf ]]; then
    echo "==> Backup ~/.tmux.conf"
    mv ~/.tmux.conf ~/.tmux.conf.bk-$DATE
fi

echo "==> Soft link .tmux.conf here"
ln -s $(pwd)/.tmux.conf ~/.tmux.conf
