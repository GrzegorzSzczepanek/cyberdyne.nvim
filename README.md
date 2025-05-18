# Cyberdyne.nvim

A dark, futuristic, cyber-themed colorscheme for Neovim.

**[SCREENSHOT_PLACEHOLDER]** 
<p align="center">
  <img src="image_9373f8.jpg" alt="Cyberdyne.nvim Screenshot" width="700"/>
</p>
## ✨ Features

* Dark, immersive interface with a distinct "cyber" feel.
* Vibrant primary foreground color for excellent code readability.
* Clear syntax highlighting for a variety of programming languages.
* Support for common Neovim UI elements, including LSP diagnostics.

## 📋 Requirements

* Neovim 0.7 or later.
* `termguicolors` must be enabled in your Neovim configuration.
    Add `vim.opt.termguicolors = true` to your `init.lua` (or `set termguicolors` in your `init.vim`).
    *(Note: The colorscheme file itself also attempts to set this option for convenience.)*

## 📦 Installation

You can install `cyberdyne.nvim` using your favorite Neovim plugin manager.

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "GrzegorzSzczepanek/cyberdyne.nvim",
  lazy = false, -- Or true, if you prefer to load it later
  priority = 1000, -- Ensures it loads before other plugins that might set colors
  config = function()
    -- Optionally, set the colorscheme here to apply it on startup
    -- vim.cmd.colorscheme "cyberdyne"
  end,
}
````

### [packer.nvim](https://github.com/wbthomason/packer.nvim) (Legacy)

```lua
use {
  "GrzegorzSzczepanek/cyberdyne.nvim",
  config = function()
    -- Optionally, set the colorscheme here
    -- vim.cmd.colorscheme "cyberdyne"
  end
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

1.  Add to your `init.vim` (or `init.lua` within a `vim.cmd` block):
    ```vim
    Plug "GrzegorzSzczepanek/cyberdyne.nvim"
    ```
2.  Run `:PlugInstall` in Neovim.

## 🚀 Usage

To apply the colorscheme, add the following to your Neovim configuration file:

**For `init.lua`:**

```lua
vim.cmd.colorscheme "cyberdyne"
```

**For `init.vim`:**

```vim
colorscheme cyberdyne
```

Make sure this command is placed *after* you have declared or set up your plugin manager if you want it to apply on startup.

## 🎨 Palette (Key Colors)

  * **Background:** `#151144` (Dark Navy/Purple Blue)
  * **Foreground (Main Text):** `#00ff92` (Bright Green/Cyan)
  * **Comments:** `#e6e7fe` (Lavender/Off-White) - *Example, adjust if different in your final version*
  * **Keywords (Statements, Operators):** `#ff90fe` (Magenta), `#ff8373` (Red)
  * **Functions & Types:** `#0071cf` (Blue), `#fffed5` (Bright Yellow)
  * **Strings & Constants:** `#00c172` (Green), `#6bffdd` (Cyan)

## ❤️ Contributing

Found an issue or have a suggestion? Feel free to open an issue or submit a pull request on the GitHub repository\!

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

-----
