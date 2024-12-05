vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>fw", function()
    vim.fn.setreg("/", "\\<" .. vim.fn.expand("<cword>") .. "\\>")
    vim.opt.hlsearch = true
end, { noremap = true, silent = true})

