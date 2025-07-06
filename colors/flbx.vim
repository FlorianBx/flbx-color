" colors/flbx.vim
" This file acts as the entry point for the :colorscheme command.

" Set the background to dark. This is important for other plugins to know
" what kind of theme is being used.
set background=dark

" Load the main Lua theme file.
lua require('florian.plugins.ui.flbx')
