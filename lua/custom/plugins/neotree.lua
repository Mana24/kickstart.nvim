return {
  'nvim-neo-tree/neo-tree.nvim',
  opts = {},
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        hijack_netrw_behavior = 'disabled',--[[ 'open_current', ]]
      },
      window = {
        position = 'right',
        mappings = {
          ['<space>'] = {
            'toggle_node',
            nowait = true, -- disable `nowait` if you have existing combos starting with this char that you want to use
          },
        },
      },
    }
    vim.keymap.set('n', '<leader>\\', '<cmd>Neotree toggle position=right<cr>')
  end,
}
