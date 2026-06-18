local ok, ts = pcall(require, 'nvim-treesitter.configs')
if not ok then return end

ts.setup({
  ensure_installed = { "lua", "go", "python", "javascript", "typescript", "json", "yaml", "html", "css" },
  highlight = { enable = true },
  incremental_selection = { enable = true },
})
