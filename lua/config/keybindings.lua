-- Telescope settings
--
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Neo-tree settings
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>")

-- Lsp settings
vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set({'n', 't'}, '<leader><space>', vim.diagnostic.open_float, { noremap = true })

local Terminal  = require('toggleterm.terminal').Terminal
local term = Terminal:new()

function term_toggle()
  term:toggle()
end

vim.keymap.set({"n", "v", "t"}, "<localleader>m", term_toggle, {})
vim.keymap.set({'n', 't'}, '<Esc>', [[<C-\><C-n>]], { noremap = true })
vim.keymap.set({'n', 't'}, '<C-h>', [[<C-\><C-n><C-w>h]], { noremap = true })
vim.keymap.set({'n', 't'}, '<C-j>', [[<C-\><C-n><C-w>j]], { noremap = true })
vim.keymap.set({'n', 't'}, '<C-k>', [[<C-\><C-n><C-w>k]], { noremap = true })
vim.keymap.set({'n', 't'}, '<C-l>', [[<C-\><C-n><C-w>l]], { noremap = true })

vim.keymap.set('n', '<A-k>', ':split<CR>', { desc = 'Horizontal Split Below' })
vim.keymap.set('n', '<A-j>', ':rightbelow split<CR>', { desc = 'Horizontal Split Above' })
vim.keymap.set('n', '<A-h>', ':vsplit<CR>', { desc = 'Vertical Split Left' })
vim.keymap.set('n', '<A-l>', ':rightbelow vsplit<CR>', { desc = 'Vertical Split Right' })

require("toggleterm").setup{
  start_in_insert = true,
  on_open = function(term)
    vim.cmd("startinsert")
  end,
}
