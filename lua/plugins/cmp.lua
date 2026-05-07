return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
  },

  {
    "onsails/lspkind.nvim",
  },

  {
    "hrsh7th/nvim-cmp",

    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lsp",
      "saadparwaiz1/cmp_luasnip",
      "onsails/lspkind.nvim",
    },

    config = function()
      local cmp = require("cmp")
      local lspkind = require("lspkind")

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },

        formatting = {
          format = lspkind.cmp_format({
            mode = "symbol_text",

            menu = {
              buffer = "[BUF]",
              nvim_lsp = "[LSP]",
              luasnip = "[SNP]",
              path = "[PATH]",
            },
          }),
        },

        window = {
          completion = cmp.config.window.bordered({
            border = "rounded",
          }),

          documentation = cmp.config.window.bordered({
            border = "rounded",
          }),
        },

        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),

        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }, {
          { name = "buffer" },
          { name = "path" },
        }),
      })

      -- estilo popup
      vim.cmd([[
        highlight Pmenu guibg=#1e293b guifg=#e2e8f0
        highlight PmenuSel guibg=#0ea5e9 guifg=#0f172a
        highlight FloatBorder guifg=#0ea5e9 guibg=#1e293b
        highlight NormalFloat guibg=#1e293b
      ]])
    end,
  },
}
