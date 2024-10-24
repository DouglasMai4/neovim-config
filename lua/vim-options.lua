-- Set tab to 2 spaces
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Debug keymaps
vim.keymap.set('n', '<leader>cd', ':lua vim.diagnostic.open_float()<CR>')
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {})
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {})

-- Config debug
vim.fn.sign_define("CodeActionSign", { text = "", texthl = "LspSagaCodeAction" })

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "rounded"
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.ts,*.tsx,*.lua",
  callback = function()
    vim.lsp.buf.format({ async = true })
  end
})

-- Terminal
vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>', { desc = 'Toggle terminal floating' })
vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical<CR>', { desc = 'Toggle terminal floating' })

-- Clear search highlights
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Add line numbers
vim.wo.number = true
vim.wo.relativenumber = true
