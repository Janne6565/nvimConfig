vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "Y", "yg$")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux new tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w><Left><Left><Left>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<S-CR>", "<Esc>o<Esc>")

vim.keymap.set("i", "<C-a>", "<Esc>^ggvG$")
vim.keymap.set("n", "<C-a>", "^ggvG$")

vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

vim.keymap.set("n", "<leader>tr", "<C-w>v<C-w>l<cmd>:term<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>:q<CR>")

vim.keymap.set("n", "<leader>pf", function()
    vim.notify("Youve unbinded this to <leader>ps", "error", { title = "Idiot" })
end)
vim.keymap.set("n", "<leader>f", "<cmd>FZF<CR>")

vim.keymap.set("t", "<Esc>", '<C-\\><C-N>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>t", "<cmd>:FloatermNew<CR>")
vim.keymap.set("t", "<C-l>", "<cmd>:FloatermNext<CR>")
vim.keymap.set("t", "<C-h>", "<cmd>:FloatermPrev<CR>")
vim.keymap.set("n", "<leader>h", "<cmd>:FloatermToggle<CR>")
