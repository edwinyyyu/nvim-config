return {
  "folke/tokyonight.nvim",
  version = "*",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  opts = {
    style = "night",
    transparent = true,
  },
  config = function(_, opts)
    -- load the colorscheme here
    require("tokyonight").setup(opts)
    vim.cmd([[colorscheme tokyonight]])
  end,
}
