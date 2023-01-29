local indent_status, indent = pcall(require, "guess-indent")
if not indent_status then
  return
end

indent.setup({})
