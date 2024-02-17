local treesitter_status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesitter_status_ok then
  return
end

treesitter.setup({
  ensure_installed = {
    "bash",
    "c",
    "cpp",
    "css",
    "go",
    "html",
    "java",
    "javascript",
    "lua",
    "python",
    "query",
    "typescript",
    "vim",
    "vimdoc"
  },
  highlight = {
    enable = true
  }
})
