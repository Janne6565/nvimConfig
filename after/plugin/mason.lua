require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer", "pylsp", "html", "jdtls", "ast_grep" },
}
