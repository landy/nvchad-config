local autocmd = vim.api.nvim_create_autocmd
vim.env.PATH = vim.fn.stdpath "data" .. "/mason/bin" .. ":" .. vim.env.PATH
-- dont list quickfix buffers
autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.fs,*.fsx,*.fsi",
  command = [[set filetype=fsharp]]
})

vim.g.copilot_assume_mapped = true
