# dev-env-settings

This repo is for my personal development settings. The goal is whenever I move to a new device, I can bring up the same development environment within minutes.

## Setting up terminal

Install zsh.
```bash
sudo apt install zsh
```

Install oh-my-zsh. Using the script in Oh My Zsh website. Change the theme to "bira". Change the zsh to default.

## Setting up vim

1. Soft link the `vim/.vimrc` to home directory. Automate the process by using `vim/deploy.sh`.

2. The `vim/.vimrc` uses `~/.vim/backup` and `~/.vim/undo` as the backup and undo file directory, has to create this two directories, otherwise the vim will warn you something like "Cannot create backup file" on exit.

3. Install plugin manager vundle
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

4. Install plugin managed by vundle
```bash
# open vim and install
vim
:PluginInstall
```

5. Coc configuration
- Coc repo: https://github.com/neoclide/coc.nvim
- After installed by vundle, the dependencies of coc.nvim need to be installed by going into the install path of coc.nvim and run `yarn install` (Install yarn using npm if neccessary)
- Then install coc json plugin and tsserver plugin inside vim command line using:
```bash
:CocInstall coc-json coc-tssever coc-html coc-clangd # already in the .vimrc file
```
- Install clangd (not neccessary install on local): https://clangd.llvm.org/installation.html
```bash
sudo apt-get install clangd-12
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100
```
- Install clangd for coc-clangd:
```bash
vim -c ":CocCommand clangd.install"
```

## Setting up tmux

1. Soft link the `tmux/.tmux.conf` to home directory. Automate the process by using `tmux/deploy.sh`.
