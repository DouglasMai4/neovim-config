-- TODO: Teste
return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    signs = true,
    gui_style = {
      fg = "BOLD", -- The gui style to use for the fg highlight group.
      bg = "BOLD", -- The gui style to use for the bg highlight group.
    },
  },
  highlight = {
    comments_only = true, -- uses treesitter to match keywords in comments only
  },
  colors = {
    error = { "DiagnosticError", "ErrorMsg", "#f38ba8" },
    warning = { "DiagnosticWarn", "WarningMsg", "#fab387" },
    info = { "DiagnosticInfo", "#94e2d5" },
    hint = { "DiagnosticHint", "#b4befe" },
    default = { "Identifier", "#f5e0dc" },
    test = { "Identifier", "#a6e3a1" }
  },
}
