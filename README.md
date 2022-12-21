# dotfiles

My personal config for vscode-neovim, and customized keymappings for VSCodeVim and VSCode-Neovim

## Context

I was previously using VSCodeVim, and then I shift from VSCodeVim to VSCode Neovim since it has better performance and better extendibility. In the meantime, I think it is worth sharing the keymappings for VSCodeVim for those who are still using it.

## VSCodeVim

`setting-vscodevim.json` contains the keymappings for VSCodeVim. you could copy the content and paste it into your `setting.json` file.

## VSCode Neovim

`vscode-neovim/setting.json` contains the keymappings for VSCode Neovim. you could copy the content and paste it into your `setting.json` file.

there is also lua files to config Neovim. you can paste the whole folder `nvim` into your `~/.config/` folder(Mac users) or `Users\<user name>\AppData\Local\nvim`.

the neovim config is based on [this](https://github.com/Vourliotis/nvim) repo.

- Open NeoVim and run :PackerSync to install the packages
- Set your init.lua path in the vscode-neovim extension settings
