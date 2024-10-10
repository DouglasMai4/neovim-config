return {
  "akinsho/toggleterm.nvim",
  version = '*',  -- use latest stable version
  config = function()
    require("toggleterm").setup({
      -- Size settings for split terminals
      size = 20,
      open_mapping = [[<c-\>]],  -- Open terminal with Ctrl + \
      hide_numbers = true,       -- Hide line numbers in terminal
      shade_terminals = true,
      shading_factor = 3,        -- Darken background of terminal
      direction = 'float',       -- Set default to floating terminal
      float_opts = {
        border = 'curved',       -- Set rounded borders for floating terminal
        winblend = 3,
      },
      close_on_exit = true,      -- Close the terminal when the process exits
    })

    vim.keymap.set('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal<CR>', { desc = 'Toggle terminal horizontal' })
  end,
}

