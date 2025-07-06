# flbx-theme.nvim

A custom colorscheme for Neovim.

## Installation

Using `lazy.nvim`:

```lua
{
  "FlorianBx/flbx-theme.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("flbx")
  end,
}
```
