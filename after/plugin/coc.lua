-- coc.lua

-- Set CoC options and custom configurations
vim.g.coc_global_extensions = {
    'coc-tsserver', -- TypeScript/JavaScript LSP
    'coc-pyright', -- Python LSP
    'coc-java',   -- Java LSP
    'coc-snippets', -- Snippet support
    'coc-lua',
    'coc-phpls',
    'coc-css',
    'coc-clangd',
    'coc-json',
    'coc-sql',
    'coc-kotlin',
    'coc-html'
    -- Add more extensions here based on the languages you're working with
}

-- Example key mappings for CoC
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Use K to show documentation in a floating window
keymap('n', 'K', '<CMD>lua vim.lsp.buf.hover()<CR>', opts)

-- Use <leader>rn to rename a symbol
keymap('n', '<leader>rn', '<Plug>(coc-rename)', opts)

-- Navigate diagnostics
keymap('n', '[g', '<Plug>(coc-diagnostic-prev)', opts)
keymap('n', ']g', '<Plug>(coc-diagnostic-next)', opts)

-- Use <leader>f to format selected code
keymap('n', '<leader>f', '<Plug>(coc-format-selected)', opts)
keymap('v', '<leader>f', '<Plug>(coc-format-selected)', opts)

-- Autocomplete suggestions
vim.cmd [[
  inoremap <silent><expr> <C-Space> coc#refresh()
]]

-- Highlight symbol under cursor
vim.cmd [[
  autocmd CursorHold * silent call CocActionAsync('highlight')
]]
