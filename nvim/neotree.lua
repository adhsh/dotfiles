vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("neo-tree").setup({
  filesystem = {
    filtered_items = {
      hide_dotfiles = true,
    },
    follow_current_file = { enabled = true },
  },
  window = {
    width = 30,
  },
})

vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>')