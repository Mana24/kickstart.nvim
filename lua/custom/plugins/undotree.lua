return { -- Undotree
  'mbbill/undotree',
  config = function()
    vim.keymap.set('n', '<leader>u', function()
      vim.cmd 'UndotreeToggle'
      vim.cmd 'UndotreeFocus'
    end, { desc = '[U]ndo tree' })
  end,
}