# Lucien Neovim Config

Konfigurasi Neovim pribadi berbasis Lua dan `lazy.nvim`, dengan plugin untuk
editing, LSP, navigasi file, Git, dan tampilan indentasi.

## Fitur

- LSP untuk Lua, TypeScript/JavaScript, Python, Rust, Bash, C, dan C++ melalui
  `nvim-lspconfig` dan Mason.
- Autocomplete dengan `nvim-cmp` dan LuaSnip.
- Syntax highlighting dengan Treesitter.
- Pencarian file dan teks dengan Telescope.
- Integrasi Git dengan Gitsigns dan Fugitive.
- Indent guide warna-warni dengan `indent-blankline.nvim`.
- Tema Eldritch, statusline, dashboard, terminal, dan Neo-tree.
- Integrasi opsional WakaTime dan Discord Rich Presence.

## Instalasi

Pastikan Neovim dan Git sudah terpasang. Backup atau pindahkan konfigurasi
Neovim yang sudah ada terlebih dahulu, lalu clone repo ini ke direktori config.

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

Saat pertama kali dibuka, Lazy akan mengunduh plugin. Jalankan `:Lazy sync`
jika plugin belum terpasang. LSP server yang dikonfigurasi dapat dipasang
melalui `:Mason`.

## Privasi

Repo ini tidak menyimpan API key atau token. WakaTime membutuhkan akun/CLI
WakaTime dan dapat mencatat aktivitas coding. Discord Rich Presence dapat
menampilkan status aktivitas Neovim ke Discord. Nonaktifkan plugin terkait
di `lua/plugins/wakatime.lua` atau `lua/plugins/discord.lua` jika tidak ingin
menggunakan integrasi tersebut.

## Kustomisasi

- Plugin: `lua/plugins/`
- Keymap: `lua/mappings.lua`
- Opsi Neovim: `lua/options.lua`
- LSP: `lua/configs/lspconfig.lua`
- Tema NvChad: `lua/chadrc.lua`

Lisensi: Unlicense. Lihat [LICENSE](./LICENSE).
