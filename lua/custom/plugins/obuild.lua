return {
    url = 'https://codeberg.org/jyu/obuild.nvim',
    ft = 'odin',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
        require('obuild').setup {
            flags = { '-vet', '-debug' },
            open_telescope = false,
        }
        vim.keymap.set('n', '<leader>ob', '<cmd>OdinBuild<cr>', { desc = 'Odin build' })
        vim.keymap.set('n', '<leader>oc', '<cmd>OdinCheck<cr>', { desc = 'Odin check' })
        vim.keymap.set('n', '<leader>od', '<cmd>OdinClear<cr>', { desc = 'Odin clear' })
    end,
}
