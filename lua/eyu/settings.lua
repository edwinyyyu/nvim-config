if not vim.g.vscode then
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1

  vim.opt.termguicolors = true

  vim.opt.mouse = "a"

  vim.opt.number = true

  vim.opt.breakindent = true
  vim.opt.linebreak = true

  vim.opt.colorcolumn = "80"

  vim.opt.cursorline = true
  vim.opt.cursorcolumn = true

  vim.opt.scrolloff = 8

  vim.opt.pumheight = 8
end

vim.opt.clipboard = "unnamedplus"
