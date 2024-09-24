return {
  "Exafunction/codeium.nvim",
  dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
  },
  config = function()
    require("codeium").setup({
      sources = {
        { name = "codeium" }
      },
      enable_chat = true,
    })
  end
}
