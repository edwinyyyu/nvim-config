return {
  "nvim-treesitter/nvim-treesitter",
  version = "*",
  lazy = false,
  opts = {
    ensure_installed = {
      "bash",
      "c",
      "c_sharp",
      "cpp",
      "css",
      "go",
      "html",
      "java",
      "javascript",
      "python",
      "query",
      "rust",
      "typescript",
      "vimdoc",
    },
    highlight = { enable = true },
  },
  main = "nvim-treesitter.configs",
  build = ":TSUpdate",
}
