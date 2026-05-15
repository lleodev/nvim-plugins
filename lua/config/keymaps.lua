vim.g.mapleader = " "

-- =========================
-- NVIM TREE
-- =========================

-- abrir / fechar explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- =========================
-- SPLITS
-- =========================

-- criar split vertical
vim.keymap.set("n", "<C-t>", ":vsplit<CR>")

-- fechar split atual
vim.keymap.set("n", "<C-w>", ":close<CR>")

-- navegar entre splits
vim.keymap.set("n", "<C-Up>", "<C-w>k")
vim.keymap.set("n", "<C-Down>", "<C-w>j")
vim.keymap.set("n", "<C-Left>", "<C-w>h")
vim.keymap.set("n", "<C-Right>", "<C-w>l")

-- =========================
-- TERMINAL
-- =========================

-- abrir terminal em split horizontal
vim.keymap.set("n", "<leader>t", ":split | terminal<CR>")

-- sair do modo terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- =========================
-- SAVE / QUIT
-- =========================

-- salvar arquivo
vim.keymap.set("n", "<C-s>", ":w<CR>")

-- sair
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<C-q>", ":qa<CR>", { silent = true })

-- =========================
-- COPY / PASTE / CUT
-- =========================

-- copiar
vim.keymap.set("v", "<C-c>", '"+y')

-- colar normal mode
vim.keymap.set("n", "<C-v>", '"+p')

-- colar insert mode
vim.keymap.set("i", "<C-v>", '<Esc>"+pa')

-- cortar
vim.keymap.set("v", "<C-x>", '"+d')

-- selecionar tudo
vim.keymap.set("n", "<C-a>", "ggVG")

-- =========================
-- BUFFER / FILE
-- =========================

-- próximo buffer
vim.keymap.set("n", "<Tab>", ":bn<CR>")

-- buffer anterior
vim.keymap.set("n", "<S-Tab>", ":bp<CR>")

-- fechar buffer
vim.keymap.set("n", "<leader>x", ":bd<CR>")

-- =========================
-- SEARCH
-- =========================

-- limpar highlight
vim.keymap.set("n", "<leader>nh", ":nohlsearch<CR>")

-- =========================
-- 42HEADER
-- =========================
vim.keymap.set("n", "<C-h>", ":Stdheader<CR>", { silent = true })


