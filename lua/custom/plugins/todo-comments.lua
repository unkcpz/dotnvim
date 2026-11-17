return {
    'folke/todo-comments.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local todo_comments = require 'todo-comments'

        -- set keymaps
        local keymap = vim.keymap -- for conciseness

        keymap.set('n', ']t', function()
            todo_comments.jump_next()
        end, { desc = 'Next todo comment' })

        keymap.set('n', '[t', function()
            todo_comments.jump_prev()
        end, { desc = 'Previous todo comment' })

        todo_comments.setup {
            highlight = {
                -- allow an optional (name) after the keyword: TODO(name):
                pattern = [[.*<((KEYWORDS)%(\(.{-1,}\))?):]],
            },
            search = {
                pattern = [[\b(KEYWORDS)(\([^\)]*\))?:]],
            },
        }
    end,
}
