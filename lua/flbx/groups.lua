local palette = require("flbx.palette")

local groups = {}

function groups.setup(config)
  local c = palette
  local cfg = config

  local hl = {}

  hl.Normal = { fg = c.fg, bg = cfg.transparent and c.none or c.bg }
  hl.NormalNC = cfg.dim_inactive and { fg = c.gray2, bg = cfg.transparent and c.none or c.bg } or hl.Normal
  hl.NormalFloat = { fg = c.fg, bg = c.gray0 }
  hl.FloatBorder = { fg = c.gray1, bg = c.gray0 }
  hl.FloatTitle = { fg = c.bright_blue, bg = c.gray0, bold = cfg.bold }

  hl.Cursor = { fg = c.cursor_text, bg = c.cursor }
  hl.lCursor = { fg = c.cursor_text, bg = c.cursor }
  hl.CursorIM = { fg = c.cursor_text, bg = c.cursor }
  hl.TermCursor = { fg = c.cursor_text, bg = c.cursor }
  hl.TermCursorNC = { fg = c.cursor_text, bg = c.gray1 }

  hl.CursorLine = { bg = cfg.transparent and c.none or c.gray0 }
  hl.CursorColumn = { bg = cfg.transparent and c.none or c.gray0 }
  hl.ColorColumn = { bg = c.gray0 }

  hl.CursorLineNr = { fg = c.bright_blue, bold = cfg.bold }
  hl.LineNr = { fg = c.gray1 }
  hl.SignColumn = { fg = c.gray1, bg = cfg.transparent and c.none or c.bg }
  hl.Folded = { fg = c.gray2, bg = c.gray0 }
  hl.FoldColumn = { fg = c.gray1, bg = cfg.transparent and c.none or c.bg }

  hl.Visual = { bg = c.selection_bg, fg = c.selection_fg }
  hl.VisualNOS = { bg = c.selection_bg, fg = c.selection_fg }
  hl.Search = { bg = c.magenta, fg = c.bg }
  hl.IncSearch = { bg = c.bright_green, fg = c.bg }
  hl.CurSearch = { bg = c.yellow, fg = c.bg }
  hl.Substitute = { bg = c.red, fg = c.bg }

  hl.StatusLine = { fg = c.gray2, bg = c.gray0 }
  hl.StatusLineNC = { fg = c.gray1, bg = c.gray0 }
  hl.WinBar = { fg = c.fg, bg = cfg.transparent and c.none or c.bg }
  hl.WinBarNC = { fg = c.gray2, bg = cfg.transparent and c.none or c.bg }

  hl.TabLine = { fg = c.gray2, bg = c.gray0 }
  hl.TabLineFill = { bg = c.gray0 }
  hl.TabLineSel = { fg = c.bright_white, bg = c.bright_blue }

  hl.VertSplit = { fg = c.gray1, bg = cfg.transparent and c.none or c.bg }
  hl.WinSeparator = { fg = c.gray1, bg = cfg.transparent and c.none or c.bg }

  hl.Pmenu = { fg = c.fg, bg = c.gray0 }
  hl.PmenuSel = { fg = c.bright_white, bg = c.bright_blue }
  hl.PmenuSbar = { bg = c.gray0 }
  hl.PmenuThumb = { bg = c.gray1 }
  hl.WildMenu = { fg = c.bright_white, bg = c.bright_blue }

  hl.NonText = { fg = c.gray1 }
  hl.SpecialKey = { fg = c.blue }
  hl.Whitespace = { fg = c.gray1 }
  hl.EndOfBuffer = { fg = c.gray1 }

  hl.Title = { fg = c.blue, bold = cfg.bold }
  hl.Directory = { fg = c.blue }
  hl.ErrorMsg = { fg = c.error }
  hl.WarningMsg = { fg = c.warning }
  hl.MoreMsg = { fg = c.green }
  hl.ModeMsg = { fg = c.gray2 }
  hl.Question = { fg = c.blue }

  hl.Comment = { fg = c.comment, italic = cfg.italic }
  hl.Constant = { fg = c.bright_blue }
  hl.String = { fg = c.bright_green }
  hl.Character = { fg = c.bright_green }
  hl.Number = { fg = c.bright_blue }
  hl.Boolean = { fg = c.bright_blue }
  hl.Float = { fg = c.bright_blue }

  hl.Identifier = { fg = c.magenta }
  hl.Function = { fg = c.bright_cyan, bold = cfg.bold }

  hl.Statement = { fg = c.cyan }
  hl.Conditional = { fg = c.cyan }
  hl.Repeat = { fg = c.cyan }
  hl.Label = { fg = c.cyan }
  hl.Operator = { fg = c.bright_cyan }
  hl.Keyword = { fg = c.cyan, bold = cfg.bold }
  hl.Exception = { fg = c.red }

  hl.PreProc = { fg = c.yellow }
  hl.Include = { fg = c.yellow }
  hl.Define = { fg = c.yellow }
  hl.Macro = { fg = c.yellow }
  hl.PreCondit = { fg = c.yellow }

  hl.Type = { fg = c.blue }
  hl.StorageClass = { fg = c.blue }
  hl.Structure = { fg = c.blue }
  hl.Typedef = { fg = c.blue }

  hl.Special = { fg = c.bright_cyan }
  hl.SpecialChar = { fg = c.bright_cyan }
  hl.Tag = { fg = c.bright_blue }
  hl.Delimiter = { fg = c.fg }
  hl.SpecialComment = { fg = c.comment, bold = cfg.bold }
  hl.Debug = { fg = c.red }

  hl.Underlined = { underline = cfg.underline }
  hl.Ignore = { fg = c.gray1 }
  hl.Error = { fg = c.error, bg = c.gray0, bold = cfg.bold }
  hl.Todo = { fg = c.bg, bg = c.bright_green, bold = cfg.bold }

  hl.DiagnosticError = { fg = c.error }
  hl.DiagnosticWarn = { fg = c.warning }
  hl.DiagnosticInfo = { fg = c.info }
  hl.DiagnosticHint = { fg = c.hint }
  hl.DiagnosticOk = { fg = c.green }

  hl.DiagnosticVirtualTextError = { fg = c.error, bg = cfg.transparent and c.none or c.bg }
  hl.DiagnosticVirtualTextWarn = { fg = c.warning, bg = cfg.transparent and c.none or c.bg }
  hl.DiagnosticVirtualTextInfo = { fg = c.info, bg = cfg.transparent and c.none or c.bg }
  hl.DiagnosticVirtualTextHint = { fg = c.hint, bg = cfg.transparent and c.none or c.bg }
  hl.DiagnosticVirtualTextOk = { fg = c.green, bg = cfg.transparent and c.none or c.bg }

  hl.DiagnosticUnderlineError = { undercurl = cfg.undercurl, sp = c.error }
  hl.DiagnosticUnderlineWarn = { undercurl = cfg.undercurl, sp = c.warning }
  hl.DiagnosticUnderlineInfo = { undercurl = cfg.undercurl, sp = c.info }
  hl.DiagnosticUnderlineHint = { undercurl = cfg.undercurl, sp = c.hint }
  hl.DiagnosticUnderlineOk = { undercurl = cfg.undercurl, sp = c.green }

  hl.LspReferenceText = { bg = c.gray0 }
  hl.LspReferenceRead = { bg = c.gray0 }
  hl.LspReferenceWrite = { bg = c.gray0 }
  hl.LspSignatureActiveParameter = { bg = c.gray0, bold = cfg.bold }
  hl.LspCodeLens = { fg = c.gray2 }
  hl.LspCodeLensSeparator = { fg = c.gray1 }

  hl.DiffAdd = { bg = c.gray0, fg = c.green }
  hl.DiffChange = { bg = c.gray0, fg = c.warning }
  hl.DiffDelete = { bg = c.gray0, fg = c.error }
  hl.DiffText = { bg = c.gray0, fg = c.bright_white }

  hl.diffAdded = { fg = c.green }
  hl.diffRemoved = { fg = c.error }
  hl.diffChanged = { fg = c.warning }
  hl.diffOldFile = { fg = c.error }
  hl.diffNewFile = { fg = c.green }
  hl.diffFile = { fg = c.blue }
  hl.diffLine = { fg = c.gray2 }
  hl.diffIndexLine = { fg = c.magenta }

  hl.GitSignsAdd = { fg = c.green }
  hl.GitSignsChange = { fg = c.warning }
  hl.GitSignsDelete = { fg = c.error }
  hl.GitSignsAddNr = { fg = c.green }
  hl.GitSignsChangeNr = { fg = c.warning }
  hl.GitSignsDeleteNr = { fg = c.error }
  hl.GitSignsAddLn = { fg = c.green }
  hl.GitSignsChangeLn = { fg = c.warning }
  hl.GitSignsDeleteLn = { fg = c.error }

  hl.TelescopeBorder = { fg = c.gray1 }
  hl.TelescopePromptBorder = { fg = c.gray1 }
  hl.TelescopeResultsBorder = { fg = c.gray1 }
  hl.TelescopePreviewBorder = { fg = c.gray1 }
  hl.TelescopeSelection = { bg = c.gray0 }
  hl.TelescopeSelectionCaret = { fg = c.bright_blue }
  hl.TelescopeMultiSelection = { fg = c.bright_blue }
  hl.TelescopeMatching = { fg = c.yellow, bold = cfg.bold }
  hl.TelescopePromptPrefix = { fg = c.bright_blue }

  hl.NeoTreeNormal = { fg = c.fg, bg = cfg.transparent and c.none or c.bg }
  hl.NeoTreeNormalNC = { fg = c.fg, bg = cfg.transparent and c.none or c.bg }
  hl.NeoTreeRootName = { fg = c.blue, bold = cfg.bold }
  hl.NeoTreeGitAdded = { fg = c.green }
  hl.NeoTreeGitConflict = { fg = c.error }
  hl.NeoTreeGitModified = { fg = c.warning }
  hl.NeoTreeGitRenamed = { fg = c.blue }
  hl.NeoTreeGitDeleted = { fg = c.error }
  hl.NeoTreeGitUntracked = { fg = c.gray2 }
  hl.NeoTreeGitIgnored = { fg = c.gray1 }
  hl.NeoTreeGitStaged = { fg = c.green }
  hl.NeoTreeIndentMarker = { fg = c.gray1 }
  hl.NeoTreeVertSplit = { fg = c.gray1, bg = cfg.transparent and c.none or c.bg }

  hl.TreesitterContext = { bg = c.gray0 }
  hl.TreesitterContextLineNumber = { fg = c.gray2, bg = c.gray0 }

  hl.WhichKey = { fg = c.magenta }
  hl.WhichKeyGroup = { fg = c.blue }
  hl.WhichKeyDesc = { fg = c.fg }
  hl.WhichKeySeperator = { fg = c.gray2 }
  hl.WhichKeyFloat = { bg = c.gray0 }
  hl.WhichKeyBorder = { fg = c.gray1, bg = c.gray0 }

  hl.IndentBlanklineChar = { fg = c.gray1, nocombine = true }
  hl.IndentBlanklineContextChar = { fg = c.gray2, nocombine = true }
  hl.IblIndent = { fg = c.gray1, nocombine = true }
  hl.IblScope = { fg = c.gray2, nocombine = true }

  hl.NotifyERRORBorder = { fg = c.error }
  hl.NotifyWARNBorder = { fg = c.warning }
  hl.NotifyINFOBorder = { fg = c.info }
  hl.NotifyDEBUGBorder = { fg = c.gray2 }
  hl.NotifyTRACEBorder = { fg = c.magenta }
  hl.NotifyERRORIcon = { fg = c.error }
  hl.NotifyWARNIcon = { fg = c.warning }
  hl.NotifyINFOIcon = { fg = c.info }
  hl.NotifyDEBUGIcon = { fg = c.gray2 }
  hl.NotifyTRACEIcon = { fg = c.magenta }
  hl.NotifyERRORTitle = { fg = c.error }
  hl.NotifyWARNTitle = { fg = c.warning }
  hl.NotifyINFOTitle = { fg = c.info }
  hl.NotifyDEBUGTitle = { fg = c.gray2 }
  hl.NotifyTRACETitle = { fg = c.magenta }

  hl.LazyProgressTodo = { fg = c.gray1 }
  hl.LazyProgressDone = { fg = c.green }

  hl.MasonHeader = { fg = c.bg, bg = c.blue, bold = cfg.bold }
  hl.MasonHeaderSecondary = { fg = c.bg, bg = c.yellow, bold = cfg.bold }
  hl.MasonHighlight = { fg = c.blue }
  hl.MasonHighlightBlock = { fg = c.bg, bg = c.blue }
  hl.MasonHighlightBlockBold = { fg = c.bg, bg = c.blue, bold = cfg.bold }
  hl.MasonMuted = { fg = c.gray2 }
  hl.MasonMutedBlock = { fg = c.gray2, bg = c.gray0 }

  return hl
end

return groups

