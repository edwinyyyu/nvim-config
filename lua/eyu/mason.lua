local mason_status_ok, mason = pcall(require, "mason")
if not mason_status_ok then
  return
end

local mason_lspconfig_status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status_ok then
  return
end

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

mason.setup()

local servers = {
  "clangd",
  "pyright",
  "jdtls",
  "tsserver",
  "html",
  "cssls",
  "bashls",
  "lua_ls"
}

mason_lspconfig.setup({
  ensure_installed = servers
})

local map = vim.keymap.set
local opts = { silent = true, buffer = bufnr }

local on_attach = function()
  map("n", "gd", vim.lsp.buf.definition, opts)
  map("n", "gD", vim.lsp.buf.declaration, opts)
  map("n", "gi", vim.lsp.buf.implementation, opts)
  map("n", "K", vim.lsp.buf.hover, opts)
  map("n", "<Leader>dk", vim.diagnostic.goto_prev, opts)
  map("n", "<Leader>dj", vim.diagnostic.goto_next, opts)
end

for _, server in pairs(servers) do
  lspconfig[server].setup {
    on_attach = on_attach
  }
end
