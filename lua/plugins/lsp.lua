return {
  "neovim/nvim-lspconfig",

  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },

  config = function()
    local capabilities =
      require("cmp_nvim_lsp").default_capabilities()

    require("mason").setup()

    require("mason-lspconfig").setup({
      ensure_installed = { "clangd" },
    })

    vim.lsp.config("clangd", {
      capabilities = capabilities,
    })

    vim.lsp.enable("clangd")

    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      underline = true,
      update_in_insert = false,
      severity_sort = true,
    })
  end,
}
