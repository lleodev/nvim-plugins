return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()

    -- =========================
    -- ON ATTACH (KEYMAPS DO TREE)
    -- =========================
    local function on_attach(bufnr)
      local api = require("nvim-tree.api")

      -- 🔥 IMPORTANTE: restaurar atalhos padrão
      api.config.mappings.default_on_attach(bufnr)

      local function opts(desc)
        return {
          desc = "nvim-tree: " .. desc,
          buffer = bufnr,
          noremap = true,
          silent = true,
        }
      end

      -- ENTER normal -> abrir ficheiro
      vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Open"))

      -- Ctrl + Enter -> abrir em split vertical
      vim.keymap.set("n", "<C-CR>", api.node.open.vertical, opts("Open: Vertical Split"))
    end

    -- =========================
    -- SETUP DO NVIM-TREE
    -- =========================
    require("nvim-tree").setup({
      on_attach = on_attach,

      view = {
        width = 30,
        side = "left",
      },

      renderer = {
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
          },
        },
      },

      filters = {
        dotfiles = false,
      },
    })

    -- =========================
    -- TRANSPARÊNCIA
    -- =========================
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "none" })

    -- =========================
    -- TOGGLE
    -- =========================
    vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { silent = true })

  end,
}
