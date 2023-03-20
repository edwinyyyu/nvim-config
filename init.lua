require "eyu.settings"
require "eyu.keymaps"

if not vim.g.vscode then
  require "eyu.plugins"
  require "eyu.colorscheme"

  require "eyu.cmp"
  require "eyu.mason"
  require "eyu.telescope"
  require "eyu.tree"
  require "eyu.treesitter"
  require "eyu.indent"
end
