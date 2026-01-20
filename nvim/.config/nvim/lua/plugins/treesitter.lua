return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "rust", "c", "cpp"},
      sync_install = false,
      auto_install = false,
      highlight = {
        enable = false,
      },
      indent = { enable = false },
    })
  end
}

