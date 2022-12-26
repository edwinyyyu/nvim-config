local treesitter_status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesitter_status_ok then
  return
end

treesitter.setup({
  ensure_installed = {
    "c",
    "cpp",
    "python",
    "java",
    "javascript",
    "typescript",
    "html",
    "css",
    "bash",
    "lua"
  },
  highlight = {
    enable = true
  }
})
