vim.cmd [[highlight IndentBlanklineIndent1 guifg=#1d2021 ]]

require("indent_blankline").setup {
  show_current_context = true,
  use_treesitter = true,
  buftype_exclude = {"terminal"},
  filetype_exclude = {
    'help', 'dashboard', 'dashpreview', 'NvimTree', 'vista', 'sagahover', 'sagasignature', 'packer',
    'log', 'lspsagafinder', 'lspinfo', 'dapui_scopes', 'dapui_breakpoints', 'dapui_stacks',
    'dapui_watches', 'dap-repl', 'toggleterm', 'alpha'
  },
  char_highlight_list = {
    "IndentBlanklineIndent1", "IndentBlanklineIndent1", "IndentBlanklineIndent1",
    "IndentBlanklineIndent1", "IndentBlanklineIndent1", "IndentBlanklineIndent1",
    "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar",
    "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar",
    "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar",
    "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar",
    "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar",
    "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar",
    "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar",
    "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar", "IndentBlanklineChar",
    "IndentBlanklineChar", "IndentBlanklineChar"
  }
}
