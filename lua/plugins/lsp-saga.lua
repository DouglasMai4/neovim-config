return {
  "glepnir/lspsaga.nvim",
  branch = "main",
  config = function()
    require("lspsaga").setup({
      code_action_lightbulb = {
        enable = true,
        sign = true,
        enable_in_insert = true,
        sign_priority = 20,
        virtual_text = false,
        icon = "",
      },
    })
  end,
}
