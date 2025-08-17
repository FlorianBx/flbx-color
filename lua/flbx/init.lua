local config = require("flbx.config")
local groups = require("flbx.groups")
local palette = require("flbx.palette")

local M = {}

M.palette = palette

function M.setup(options)
  if vim.version().api_level < 10 then
    vim.notify("flbx.nvim: you must use Neovim 0.8 or higher", vim.log.levels.ERROR)
    return
  end

  config.setup(options)
end

function M.load()
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = "flbx"
  vim.o.termguicolors = true

  local cfg = config.get()
  local highlight_groups = groups.setup(cfg)

  for group, settings in pairs(highlight_groups) do
    vim.api.nvim_set_hl(0, group, settings)
  end

  if cfg.terminal_colors then
    M.set_terminal_colors()
  end
end

function M.set_terminal_colors()
  local c = palette
  vim.g.terminal_color_0 = c.black
  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_3 = c.yellow
  vim.g.terminal_color_4 = c.blue
  vim.g.terminal_color_5 = c.magenta
  vim.g.terminal_color_6 = c.cyan
  vim.g.terminal_color_7 = c.white
  vim.g.terminal_color_8 = c.bright_black
  vim.g.terminal_color_9 = c.bright_red
  vim.g.terminal_color_10 = c.bright_green
  vim.g.terminal_color_11 = c.bright_yellow
  vim.g.terminal_color_12 = c.bright_blue
  vim.g.terminal_color_13 = c.bright_magenta
  vim.g.terminal_color_14 = c.bright_cyan
  vim.g.terminal_color_15 = c.bright_white
end

return M

