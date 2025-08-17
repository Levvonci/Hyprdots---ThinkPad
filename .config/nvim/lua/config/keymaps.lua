
-- Imposta il leader key
vim.g.mapleader = " "      -- Space come leader
vim.g.maplocalleader = " " -- opzionale, per mapping locali

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- 1. Finestre: navigazione rapida tra split (ispirato a “Must-Have Neovim Keymaps”) :contentReference[oaicite:0]{index=0}
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- 2. Buffers: facilitare cambio e chiusura buffer
keymap("n", "<leader>bd", ":bd<CR>", opts)     -- close buffer
keymap("n", "<leader>bn", ":bnext<CR>", opts)  -- next buffer
keymap("n", "<leader>bp", ":bprevious<CR>", opts)  -- previous buffer

-- 3. Nvim-tree: apertura del file explorer :contentReference[oaicite:1]{index=1}
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- 4. Telescope (se lo usi): ricerca file e contenuti
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)

-- 5. Auto-pairs + cmp: inserimento parentesi automatico al completamento
-- (non serve keymap, è integrato nell'autopairs config)

-- 6. LSP (definiti nel tuo on_attach): go-to, hover, code action, diagnostics
-- (esempio già incluso tramite on_attach: `gd`, `K`, `<leader>rn`, etc.)

-- 7. Diagnostica: miglior navigazione degli errori LSP
keymap("n", "[d", vim.diagnostic.goto_prev, opts)
keymap("n", "]d", vim.diagnostic.goto_next, opts)
keymap("n", "<leader>e", vim.diagnostic.open_float, opts)
keymap("n", "<leader>q", vim.diagnostic.setloclist, opts)

