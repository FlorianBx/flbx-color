# flbx-theme.nvim

### A custom colorscheme for Neovim.
![Screenshot 2025-07-08 at 11 31 14 PM](https://github.com/user-attachments/assets/41b8aa92-c88a-4013-9bb0-0a35245d4edd)

<details>
<summary>More...</summary>
  
![Screenshot 2025-07-08 at 11 27 41 PM](https://github.com/user-attachments/assets/d7748065-5fef-407f-9040-0401b69f4385)
</details>

### Installation
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
