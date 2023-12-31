vim.o.guifont = "JetBrainsMono Nerd Font:h15:r"
vim.opt.linespace = 0
vim.g.neovide_scale_factor = 1.1

-- window padding
vim.g.neovide_padding_top = 20
vim.g.neovide_padding_bottom = 4
vim.g.neovide_padding_right = 4
vim.g.neovide_padding_left = 4

-- options
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_input_macos_alt_is_meta = true

-- visual teeks
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_animation_length = 0.042
vim.g.neovide_cursor_trail_size = 0
vim.g.neovide_cursor_animate_command_line = false

-- transparency
local alpha = function()
  return string.format("%x", math.floor(255 * (vim.g.transparency or 0.8)))
end

vim.g.neovide_transparency = 0
vim.g.transparency = 0.92
vim.g.neovide_background_color = "#181818" .. alpha()

-- Keymaps
if vim.g.neovide then
  vim.keymap.set({ "n", "v", "i" }, "<D-s>", "<ESC><ESC>:w<CR>") -- Save
  vim.keymap.set("v", "<D-c>", '"+y') -- Copy
  vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
  vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
end

-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })
