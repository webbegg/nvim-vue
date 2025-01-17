require("telescope").load_extension("harpoon")
return {
    {
        "telescope.nvim",
        dependencies = {
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
                config = function()
                    require("telescope").load_extension("fzf")
                end
            }, {}
        },
        keys = {
            {"<leader><space>", false},
            {"<C-p>", "<cmd>Telescope find_files<cr>", desc = "Find files"}, {
                "<leader>fp",
                function()
                    require("telescope.builtin").find_files({
                        cwd = require("lazy.core.config").options.root
                    })
                end,
                desc = "Find Plugin File"
            }, {"<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "Recent"},
            {
                "<leader>fw",
                require("lazyvim.util").telescope("live_grep"),
                desc = "Find in Files (Grep)"
            }, {
                "<leader>fW",
                '<cmd>lua require("telescope.builtin").live_grep({grep_open_files=true})<CR>',
                desc = "Grep Buffers"
            },
            {
                "<leader>fB",
                "<cmd>Telescope git_branches<cr>",
                desc = "Checkout Branch"
            },
            {
                "<leader>sP",
                "<cmd>Telescope harpoon marks<cr>",
                desc = "Harpoon Marks"
            }
        },
        opts = {
            defaults = {
                layout_strategy = "horizontal",
                layout_config = {prompt_position = "top"},
                sorting_strategy = "ascending",
                winblend = 0,
                preview = {hide_on_startup = false},
                mappings = {
                    i = {
                        ["<esc>"] = require("telescope.actions").close,
                        ["<C-j>"] = require("telescope.actions").move_selection_next,
                        ["<C-k>"] = require("telescope.actions").move_selection_previous,
                        ["<C-n>"] = require("telescope.actions").cycle_history_next,
                        ["<C-p>"] = require("telescope.actions").cycle_history_prev,
                        ["<Down>"] = require("telescope.actions").move_selection_next,
                        ["<Up>"] = require("telescope.actions").move_selection_previous,
                        ["<C-h>"] = require("telescope.actions.layout").toggle_preview
                    }
                }
            }
        }
    }, {"m-demare/hlargs.nvim", event = "LspAttach", opts = {}}
}
