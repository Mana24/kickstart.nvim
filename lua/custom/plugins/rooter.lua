return { -- Rooter
  'airblade/vim-rooter',
  config = function()
    vim.g.rooter_manual_only = 1
    -- Removed 'acwrite' from rooter buftypes so it doesn't accidentally fuck with oil.nvim
    vim.g.rooter_buftypes = { '', 'nofile', 'nowrite' }
    vim.keymap.set('n', '<leader>cw', function()
      -- local curr_buff = vim.bo[vim.api.nvim_get_current_buf()]
      vim.cmd 'Rooter'
    end, { desc = '[C]hange [W]orking directory to Rooter' })
  end,
}
