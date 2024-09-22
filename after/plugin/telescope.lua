local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', function()
    builtin.find_files({
        find_command = { 'git', 'ls-files', '--exclude-standard', '--cached', '--others' }
    })
end, { desc = 'Telescope find files (respect .gitignore)' })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Git file search' })
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
