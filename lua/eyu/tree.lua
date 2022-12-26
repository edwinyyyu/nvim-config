local tree_status_ok, tree = pcall(require, "nvim-tree")
if not tree_status_ok then
  return
end

tree.setup({
  renderer = {
    icons = {
      show = {
        file = false,
        folder = false,
        folder_arrow = false,
        git = false
      }
    }
  }
})
