local tokyonight_status, tokyonight = pcall(require, "tokyonight")
if not tokyonight_status then
  return
end

tokyonight.setup({
  style = "night",
  transparent = true
})

vim.cmd [[colorscheme tokyonight-night]]
