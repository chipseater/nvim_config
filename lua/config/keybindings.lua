-- Telescope settings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Neo-tree settings
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>")

-- Lsp settings
vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {})
