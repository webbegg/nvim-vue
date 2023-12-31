return {
  "j-morano/buffer_manager.nvim",
  config = function()
    local opts = { noremap = true }
    local map = vim.keymap.set
    -- Setup
    require("buffer_manager").setup({
      select_menu_item_commands = {
        v = {
          key = "<C-v>",
          command = "vsplit",
        },
        h = {
          key = "<C-h>",
          command = "split",
        },
      },
      focus_alternate_buffer = true,
      short_file_names = true,
      short_term_names = false,
      loop_nav = true,
    })
    -- Navigate buffers bypassing the menu
    local bmui = require("buffer_manager.ui")
    local keys = "1234567890"
    for i = 1, #keys do
      local key = keys:sub(i, i)
      map("n", string.format("<leader>%s", key), function()
        bmui.nav_file(i)
      end, opts)
    end
    -- Just the menu
    map({ "t", "n" }, "<leader><space>", bmui.toggle_quick_menu, opts)
    -- Open menu and search
    map({ "t", "n" }, "<M-l>", function()
      bmui.toggle_quick_menu()
      -- wait for the menu to open
      vim.defer_fn(function()
        vim.fn.feedkeys("/")
      end, 50)
    end, opts)
    -- Next/Prev
    map("n", "<leader>j", bmui.nav_next, opts)
    map("n", "<leader>k", bmui.nav_prev, opts)
    -- Reordering
    vim.api.nvim_command([[
        autocmd FileType buffer_manager vnoremap J :m '>+1<CR>gv=gv
        autocmd FileType buffer_manager vnoremap K :m '<-2<CR>gv=gv
    ]])
  end,
}
-- return {
--   "dzfrias/arena.nvim",
--   event = "BufWinEnter",
--   config = function()
--     require("arena").setup({
--       -- Maxiumum number of files that the arena window can contain, or `nil` for
--       -- an unlimited amount
--       max_items = 5,
--       -- Always show the enclosing folder for these paths
--       always_context = { "mod.rs", "init.lua" },
--       -- When set, ignores the current buffer when listing files in the window.
--       ignore_current = false,
--       -- Options to apply to the arena buffer.
--       -- Format should be `["<OPTION>"] = <VALUE>`
--       buf_opts = {
--         ["relativenumber"] = false,
--       },
--       -- Filter out buffers per the project they belong to.
--       per_project = false,
--
--       window = {
--         width = 60,
--         height = 10,
--         border = "rounded",
--         title = "-  -",
--
--         -- Options to apply to the arena window.
--         opts = {},
--       },
--
--       -- Keybinds for the arena window.
--       keybinds = {
--         -- Example. Uncomment to add to your config!
--         -- ["e"] = function()
--         --   vim.cmd("echo \"Hello from the arena!\"")
--         -- end
--       },
--
--       -- Config for frecency algorithm.
--       algorithm = {
--         -- Multiplies the recency by a factor. Must be greater than zero.
--         -- A smaller number will mean less of an emphasis on recency!
--         recency_factor = 0.5,
--         -- Same as `recency_factor`, but for frequency!
--         frequency_factor = 1,
--       },
--     })
--   end,
-- }
