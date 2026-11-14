return {
    -- url = 'https://codeberg.org/jyu/obuild.nvim',
    dir = '~/lua/obuild.nvim',
    ft = 'odin',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
        require('obuild').setup {
            flags = { '-vet' },
            open_telescope = false,
        }
        vim.keymap.set('n', '<leader>ob', '<cmd>OdinBuild<cr>', { desc = 'Odin build' })
        vim.keymap.set('n', '<leader>oc', '<cmd>OdinCheck<cr>', { desc = 'Odin check (no -debug)' })
        vim.keymap.set('n', '<leader>od', '<cmd>OdinDebugCheck<cr>', { desc = 'Odin check (-debug)' })
        vim.keymap.set('n', '<leader>op', '<cmd>OdinClear<cr>', { desc = 'Odin purge' })
    end,
}
