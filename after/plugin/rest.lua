local rest_nvim = require('rest-nvim')

rest_nvim.setup({
  result_split_horizontal = false,
  skip_ssl_verification = false,
  highlight = {
    enabled = true,
    timeout = 150,
  },
  jump_to_request = false,
  jump_to_response = false,
  include_default_headers = true,
})

vim.api.nvim_set_keymap('n', '<leader>rr', '<Plug>RestNvim', {})
