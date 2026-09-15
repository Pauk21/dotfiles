vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true

-- Indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Cursor & UI
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

-- Splitting
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Scrolling & performance
vim.opt.scrolloff = 8
vim.opt.updatetime = 250


-- Auto open neo-tree instead off netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.api.nvim_create_autocmd("VimEnter", {
    group = vim.api.nvim_create_augroup("NeotreeAutoOpen", { clear = true }),
    desc = "Open Neotree when starting with a directory",
    once = true,
    callback = function()
        if vim.fn.argc() > 0 then
            local arg = vim.fn.argv(0)
            local stat = vim.uv.fs_stat(arg)
            if stat and stat.type == "directory" then
                vim.cmd("Neotree show")
            end
        end
    end,
})
