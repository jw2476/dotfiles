local keymap = vim.keymap.set

vim.g.mapleader = " "

keymap("n", "<leader>ps", '<cmd>lua vim.pack.update()<CR>')
vim.keymap.set("n", "<Leader>fm", function()
    vim.lsp.buf.format({ async = true })
end, { desc = "Format buffer with LSP" })
