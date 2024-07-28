require("eyu.settings")
require("eyu.keymaps")

if not vim.g.vscode then
  require("config.lazy")

  -- require "eyu.cmp"
  -- require "eyu.mason"
  -- require "eyu.treesitter"
end
