return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      cpp = { "clang_format" },
      c = { "clang_format" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
  config = function(_, opts)
    require("conform").setup(opts)
    vim.keymap.set("n", "<leader>gf", function()
      require("conform").format({ lsp_fallback = true })
    end)
  end,
}
