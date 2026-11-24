# Lucien Neovim Config

A personal Neovim configuration written in Lua and managed with `lazy.nvim`.
It includes plugins for coding, language support, file search, Git, and
indent guides.

## Features

- Language support for Lua, TypeScript/JavaScript, Python, Rust, Bash, C, and
  C++ with `nvim-lspconfig` and Mason.
- Code completion with `nvim-cmp` and LuaSnip.
- Syntax highlighting with Treesitter.
- File and text search with Telescope.
- Git tools with Gitsigns and Fugitive.
- Rainbow indent guides with `indent-blankline.nvim`.
- Eldritch theme, statusline, dashboard, terminal, and Neo-tree.
- Optional WakaTime and Discord Rich Presence integrations.

## Installation

Make sure Neovim and Git are installed. Back up or move your current Neovim
configuration first. Then clone this repository into your Neovim config folder.

### Linux / WSL

```sh
mv ~/.config/nvim ~/.config/nvim.backup
git clone https://github.com/zaenuril/Lucien.git ~/.config/nvim
nvim
```

### Windows (PowerShell)

```powershell
Rename-Item "$env:LOCALAPPDATA\nvim" "nvim.backup"
git clone https://github.com/zaenuril/Lucien.git "$env:LOCALAPPDATA\nvim"
nvim
```

Lazy will download the plugins the first time you open Neovim. If some plugins
are missing, run `:Lazy sync`. You can install the configured language servers
with `:Mason`.

## Privacy

This repository does not include API keys or access tokens. WakaTime needs an
account and its CLI, and it can track coding activity. Discord Rich Presence can
show your Neovim activity on Discord. To disable either integration, remove or
disable its plugin in `lua/plugins/wakatime.lua` or `lua/plugins/discord.lua`.

## Customization

- Plugins: `lua/plugins/`
- Keymaps: `lua/mappings.lua`
- Neovim options: `lua/options.lua`
- Language servers: `lua/configs/lspconfig.lua`
- NvChad theme settings: `lua/chadrc.lua`

License: Unlicense. See [LICENSE](./LICENSE).
