return { -- Integrated terminal
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    size = function(term)
      if term.direction == 'horizontal' then
        return 15
      elseif term.direction == 'vertical' then
        return math.floor(vim.o.columns * 0.4)
      end
    end,
    open_mapping = '<c-\\>',
    shell = 'powershell',
    direction = 'vertical',
  },
}
