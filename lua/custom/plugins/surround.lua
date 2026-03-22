return {
    'kylechui/nvim-surround',
    event = { 'BufReadPre', 'BufNewFile' },
    version = '*', -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        -- Insert mode
        vim.keymap.set('i', '<C-g>z', '<Plug>(nvim-surround-insert)')

        -- Normal mode
        vim.keymap.set('n', 'gz', '<Plug>(nvim-surround-normal)')
        vim.keymap.set('n', 'gZ', '<Plug>(nvim-surround-normal-cur)')
        vim.keymap.set('n', 'gzgz', '<Plug>(nvim-surround-normal-line)')
        vim.keymap.set('n', 'gZgZ', '<Plug>(nvim-surround-normal-cur-line)')

        -- Visual mode
        vim.keymap.set('x', 'gz', '<Plug>(nvim-surround-visual)')
        vim.keymap.set('x', 'gZ', '<Plug>(nvim-surround-visual-line)')

        -- Operators
        vim.keymap.set('n', 'gzd', '<Plug>(nvim-surround-delete)')
        vim.keymap.set('n', 'gzr', '<Plug>(nvim-surround-change)')
    end,
}
