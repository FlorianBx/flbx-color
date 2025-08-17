local config = {}

config.default = {
  terminal_colors = true,
  italic = true,
  bold = true,
  underline = true,
  undercurl = true,
  inverse = true,
  transparent = false,
  dim_inactive = false,
}

config.options = {}

function config.setup(options)
  config.options = vim.tbl_extend("force", config.default, options or {})
end

function config.get()
  return config.options
end

return config
