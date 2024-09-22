local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', function()
    -- Check if we are in a Git repository
    local is_git_repo = vim.fn.system('git rev-parse --is-inside-work-tree') == 'true\n'

    if is_git_repo then
        -- Use git ls-files if in a Git repository
        builtin.find_files({
            find_command = { 'git', 'ls-files', '--exclude-standard', '--cached', '--others' }
        })
    else
        -- Fallback to normal find_files if not in a Git repository
        builtin.find_files()
    end
end, { desc = 'Telescope find files (respect .gitignore if in a git repo)' })

vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Git file search' })
