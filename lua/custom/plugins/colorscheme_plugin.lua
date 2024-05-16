return {
  'EdenEast/nightfox.nvim',
  priority = 1000,
  opts = {
    specs = {
      all = {
        syntax = {
          operator = 'yellow.dim',
        },
      },
    },
  },
  init = function()
    vim.cmd.colorscheme 'duskfox'
    vim.cmd.hi 'Comment gui=none'
  end,
}
