return {
  -- "kosayoda/nvim-lightbulb",
  -- dependencies = {
  --   "antoinemadec/FixCursorHold.nvim",
  -- },
  -- config = function()
  --   require("nvim-lightbulb").setup({
  --     ignore = {},
  --     sign = {
  --       enabled = true,
  --       priority = 10,
  --     },
  --     float = {
  --       enabled = true,
  --       text = "💡",
  --       win_opts = {
  --         winblend = 100,
  --         offset_y = 25,
  --       },
  --     },
  --     virtual_text = {
  --       enabled = false,
  --       text = "💡",
  --       hl_mode = "replace",
  --     },
  --     status_text = {
  --       enabled = false,
  --       text = "💡",
  --       text_unavailable = "",
  --     },
  --     autocmd = {
  --       enabled = false,
  --       pattern = { "*" },
  --       events = { "CursorHold", "CursorHoldI" },
  --     },
  --   })
  --   _G.X = {
  --     -- Prevents autocmd to open diagnostic when hover window that is pressed by 'K' key is opened.
  --     help_float = 0,
  --   }
  --   vim.api.nvim_create_autocmd("CursorHold", {
  --     group = vim.api.nvim_create_augroup("auto_popup_diagnostic", { clear = false }),
  --     callback = function()
  --       if _G.X.help_float == 0 then
  --         vim.diagnostic.open_float({
  --           scope = "line",
  --           focus = false,
  --         })
  --       end
  --     end,
  --   })
  --
  --   vim.api.nvim_create_autocmd({ "CursorMoved", "InsertEnter" }, {
  --     group = vim.api.nvim_create_augroup("auto_popup_diagnostic", { clear = false }),
  --     callback = function()
  --       _G.X.help_float = 0
  --     end,
  --   })
  -- end,
}
