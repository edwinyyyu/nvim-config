local tree_status_ok, tree = pcall(require, "nvim-tree")
if not tree_status_ok then
  return
end

tree.setup({
  renderer = {
    indent_markers = {
      enable = true
    },
    icons = {
      glyphs = {
        default = "🗋",
        symlink = "🗋 ⮳",
        bookmark = "⚐",
        folder = {
          arrow_closed = "🞂",
          arrow_open = "🞃",
          default = "🗀",
          open = "🗁",
          empty = "🗀 ∅",
          empty_open = "🗁 ∅",
          symlink = "🗀 ⮳",
          symlink_open = "🗁 ⮳"
        },
        git = {
          unstaged = "∉",
          staged = "∈",
          unmerged = "⫫",
          renamed = "≡",
          untracked = "∥",
          deleted = "Δ",
          ignored = "◌"
        }
      }
    }
  }
})
