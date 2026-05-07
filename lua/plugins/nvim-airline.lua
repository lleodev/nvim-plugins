return {
  "vim-airline/vim-airline",
  dependencies = {
    "vim-airline/vim-airline-themes",
  },

  config = function()
    vim.g.airline_powerline_fonts = 1
    vim.g.airline_theme = "base16"

    -- 🧹 remove duplicação do filename em baixo
    vim.g['airline_section_c'] = ''

    -- 🚀 ativa extensões globais
    vim.g.airline_extensions = { "branch", "hunks", "tabline" }

    -- 🌿 BRANCH (git)
    vim.g.airline_branch_prefix = " "
    vim.g['airline#extensions#branch#enabled'] = 1
    vim.g['airline#extensions#branch#use_vcscommand'] = 1

    -- 📊 GIT CHANGES (hunks)
    vim.g['airline#extensions#hunks#enabled'] = 1
    vim.g['airline#extensions#hunks#non_zero_only'] = 1

    -- 🌟 TABLINE (top bar)
    vim.g['airline#extensions#tabline#enabled'] = 1
    vim.g['airline#extensions#tabline#left_sep'] = ""
    vim.g['airline#extensions#tabline#right_sep'] = ""
    vim.g['airline#extensions#tabline#formatter'] = "default"

    -- 🧠 símbolos (CORRIGIDO — airline não usa branch_prefix assim)
    vim.g.airline_detect_modified = 1
    vim.g.airline_detect_paste = 0

    -- separadores statusline
    vim.g.airline_left_sep = ""
    vim.g.airline_right_sep = ""
  end,
}
