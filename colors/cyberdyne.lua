-- ~/.config/nvim/colors/cyberdyne.lua

-- Set this to enable true color support
vim.opt.termguicolors = true
-- Set the name of your colorscheme
vim.g.colors_name = 'cyberdyne'

-- Helper function to clear existing highlights
local function clear_highlights()
  vim.cmd 'highlight clear'
  if vim.fn.exists 'syntax_on' then
    vim.cmd 'syntax reset'
  end
end

-- Helper function to set highlights
-- group: The highlight group name (e.g., "Normal", "Keyword")
-- opts: A table with highlight options (e.g., { fg = '#RRGGBB', bg = '#RRGGBB', bold = true })
local function set_hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Apply the theme
local function apply_cyberdyne()
  clear_highlights()

  -- Your Cyberdyne Palette
  local p = {
    bg = '#151144',
    fg = '#00ff92',
    cursor = '#00ff9c',
    cursor_text = '#ffffff', -- Often, Normal fg is used on cursor
    selection_bg = '#454d96',
    selection_fg = '#f4f4f4',

    c0 = '#080808', -- black
    c1 = '#ff8373', -- red
    c2 = '#00c172', -- green
    c3 = '#d2a700', -- yellow
    c4 = '#0071cf', -- blue
    c5 = '#ff90fe', -- magenta
    c6 = '#6bffdd', -- cyan
    c7 = '#f1f1f1', -- white
    c8 = '#2e2e2e', -- brightBlack
    c9 = '#ffc4be', -- brightRed
    c10 = '#d6fcba', -- brightGreen
    c11 = '#fffed5', -- brightYellow
    c12 = '#c2e3ff', -- brightBlue
    c13 = '#ffb2fe', -- brightMagenta
    c14 = '#e6e7fe', -- brightCyan (lavender/off-white)
    c15 = '#ffffff', -- brightWhite
  }

  -- Neovim UI Elements
  set_hl('Normal', { fg = p.fg, bg = p.bg })
  set_hl('Visual', { fg = p.selection_fg, bg = p.selection_bg })
  set_hl('Cursor', { fg = p.bg, bg = p.cursor }) -- Cursor block color, text on it takes Normal fg by default
  set_hl('CursorLine', { bg = p.c8 }) -- Underline the cursor line, choose a subtle color
  set_hl('CursorColumn', { bg = p.c8 }) -- Highlight cursor column, choose a subtle color
  set_hl('ColorColumn', { bg = p.c0 }) -- For textwidth marker

  set_hl('LineNr', { fg = p.c8, bg = p.bg }) -- Line numbers
  set_hl('SignColumn', { fg = p.c8, bg = p.bg }) -- Git signs, diagnostics
  set_hl('Folded', { fg = p.c12, bg = p.c0 }) -- Folded text
  set_hl('NonText', { fg = p.c8 }) -- Characters like end of line markers
  set_hl('SpecialKey', { fg = p.c4 }) -- Unprintable characters
  set_hl('StatusLine', { fg = p.c15, bg = p.c8, reverse = false }) -- Status line
  set_hl('StatusLineNC', { fg = p.c7, bg = p.c0, reverse = false }) -- Status line for non-active windows
  set_hl('TabLine', { fg = p.c7, bg = p.c0 }) -- Tab line (inactive tabs)
  set_hl('TabLineSel', { fg = p.c15, bg = p.c4 }) -- Active tab
  set_hl('TabLineFill', { bg = p.c0 })

  set_hl('Search', { fg = p.bg, bg = p.c3 }) -- Search results
  set_hl('IncSearch', { fg = p.bg, bg = p.c1 }) -- Incremental search

  set_hl('Pmenu', { fg = p.c7, bg = p.c8 }) -- Popup menu
  set_hl('PmenuSel', { fg = p.c15, bg = p.c4 }) -- Selected item in popup
  set_hl('PmenuSbar', { bg = p.c0 }) -- Scrollbar for popup
  set_hl('PmenuThumb', { bg = p.c7 }) -- Thumb for popup scrollbar

  set_hl('Directory', { fg = p.c3 }) -- For file explorer plugins like netrw, nvim-tree

  -- Standard Syntax Highlighting (YOU NEED TO CUSTOMIZE THESE MAPPINGS)
  -- This is where you decide which colors from your palette to use for code.
  -- Here are some common groups and example mappings.
  -- Adjust these to your liking using your 'p.c_X' colors or 'p.fg'.

  set_hl('Comment', { fg = p.c12, italic = true }) -- Comments (using brightBlack/darkGrey)
  set_hl('Constant', { fg = p.c6 }) -- Constants, numbers, booleans (using cyan)
  set_hl('String', { fg = p.c2 }) -- Strings (using green)
  set_hl('Character', { fg = p.c2 }) -- Character literals
  set_hl('Number', { fg = p.c6 }) -- Numbers
  set_hl('Boolean', { fg = p.c6 }) -- Booleans

  set_hl('Identifier', { fg = p.c7 }) -- Variable names, etc. (using white)
  set_hl('Function', { fg = p.c4, bold = true }) -- Function names (using blue)

  set_hl('Statement', { fg = p.c5, bold = true }) -- Keywords like if, else, for, while (using magenta)
  set_hl('Conditional', { fg = p.c5, bold = true }) -- if, then, else
  set_hl('Repeat', { fg = p.c5, bold = true }) -- for, while, do
  set_hl('Label', { fg = p.c3 }) -- case, default
  set_hl('Operator', { fg = p.c1 }) -- +, -, *, /, etc. (using red)
  set_hl('Keyword', { fg = p.c1, bold = true }) -- Other keywords (e.g., 'import', 'from' - using red)
  set_hl('Exception', { fg = p.c1, bold = true }) -- try, catch, throw

  set_hl('PreProc', { fg = p.c3 }) -- Preprocessor directives (#include, #define)
  set_hl('Include', { fg = p.c3 })
  set_hl('Define', { fg = p.c3 })
  set_hl('Macro', { fg = p.c3 })

  set_hl('Type', { fg = p.c11, bold = true }) -- Data types (int, char, string - using brightYellow)
  set_hl('StorageClass', { fg = p.c11 }) -- static, extern, const
  set_hl('Structure', { fg = p.c11 }) -- struct, union, enum
  set_hl('Typedef', { fg = p.c11 })

  set_hl('Special', { fg = p.c13 }) -- Special symbols or tokens (using brightMagenta)
  set_hl('SpecialChar', { fg = p.c13 })
  set_hl('Tag', { fg = p.c5 })
  set_hl('Delimiter', { fg = p.c7 })
  set_hl('SpecialComment', { fg = p.c8, bold = true })
  set_hl('Debug', { fg = p.c1 })

  set_hl('Underlined', { underline = true })
  set_hl('Bold', { bold = true })
  set_hl('Italic', { italic = true })

  set_hl('Error', { fg = p.c1, bg = p.bg, bold = true }) -- Errors
  set_hl('ErrorMsg', { fg = p.c1, bg = p.bg, bold = true })
  set_hl('WarningMsg', { fg = p.c3, bg = p.bg, bold = true })
  set_hl('Todo', { fg = p.c5, bg = p.bg, bold = true }) -- TODO, FIXME, XXX comments

  -- LSP Diagnostics
  set_hl('DiagnosticError', { fg = p.c1 })
  set_hl('DiagnosticWarn', { fg = p.c3 })
  set_hl('DiagnosticInfo', { fg = p.c6 })
  set_hl('DiagnosticHint', { fg = p.c2 })
  set_hl('DiagnosticUnderlineError', { sp = p.c1, underline = true })
  set_hl('DiagnosticUnderlineWarn', { sp = p.c3, underline = true })
  set_hl('DiagnosticUnderlineInfo', { sp = p.c6, underline = true })
  set_hl('DiagnosticUnderlineHint', { sp = p.c2, underline = true })

  -- Diff Highlighting
  set_hl('DiffAdd', { fg = p.c2, bg = p.bg })
  set_hl('DiffChange', { fg = p.c4, bg = p.bg })
  set_hl('DiffDelete', { fg = p.c1, bg = p.bg })
  set_hl('DiffText', { fg = p.fg, bg = p.c8 }) -- Text on top of changed lines

  -- Set terminal colors (Neovim's internal representation)
  -- This is useful if some plugins still try to use terminal_color_X
  vim.g.terminal_color_0 = p.c0
  vim.g.terminal_color_1 = p.c1
  vim.g.terminal_color_2 = p.c2
  vim.g.terminal_color_3 = p.c3
  vim.g.terminal_color_4 = p.c4
  vim.g.terminal_color_5 = p.c5
  vim.g.terminal_color_6 = p.c6
  vim.g.terminal_color_7 = p.c7
  vim.g.terminal_color_8 = p.c8
  vim.g.terminal_color_9 = p.c9
  vim.g.terminal_color_10 = p.c10
  vim.g.terminal_color_11 = p.c11
  vim.g.terminal_color_12 = p.c12
  vim.g.terminal_color_13 = p.c13
  vim.g.terminal_color_14 = p.c14
  vim.g.terminal_color_15 = p.c15
end

apply_cyberdyne()

