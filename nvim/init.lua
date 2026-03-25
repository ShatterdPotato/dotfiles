require("config.lazy")
require("config.options")

-- vim keymaps (non-plugin)
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('x', 'jk', '<Esc>')
vim.keymap.set('x', '<S-tab>', '<gv', {silent = true})
vim.keymap.set('x', '<Tab>', '>gv', {silent = true})
