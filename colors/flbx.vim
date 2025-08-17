" Name: flbx
" Description: A clean, elegant colorscheme inspired by the Nord theme
" Author: Generated with Claude Code
" License: MIT

if version > 580
  highlight clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = "flbx"
set background=dark

if !has('gui_running') && &t_Co != 256
  finish
endif

lua << EOF
local flbx = require('flbx')
flbx.setup()
flbx.load()
EOF
