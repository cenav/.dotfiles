return {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>pf', builtin.find_files, {desc = '[P]royect [F]ind'})
    vim.keymap.set('n', '<C-p>', builtin.git_files, {desc = '[P]royect Git}'})
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") });
    end)
    vim.keymap.set('n', '<leader>pws', function()
      local word = vim.fn.expand("<cword>")
      builtin.grep_string({ search = word })
    end)
    vim.keymap.set('n', '<leader>pWs', function()
      local word = vim.fn.expand("<cWORD>")
      builtin.grep_string({ search = word })
    end)
  end
}
