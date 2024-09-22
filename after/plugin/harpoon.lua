local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", function()
    mark.add_file()
    vim.notify("Marked file", "INFO", { title = "Harpoon" })
end)

vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu)
