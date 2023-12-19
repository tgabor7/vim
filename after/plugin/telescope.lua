local builtin = require('telescope.builtin')
require('telescope').setup {
  defaults = {
				file_ignore_patterns = { "node_modules", "dist", "build" }
	}
}
vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
