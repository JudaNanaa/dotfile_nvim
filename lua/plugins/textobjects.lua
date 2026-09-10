return {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    event = "VeryLazy",
    config = function()
        require("nvim-treesitter-textobjects").setup({
            select = {
                lookahead = true, -- saute en avant jusqu'au prochain textobject si le curseur n'est pas dessus
            },
        })

        local select = require("nvim-treesitter-textobjects.select")

        -- Around / Inside pour function
        vim.keymap.set({ "x", "o" }, "af", function()
            select.select_textobject("@function.outer", "textobjects")
        end, { desc = "around function" })
        vim.keymap.set({ "x", "o" }, "if", function()
            select.select_textobject("@function.inner", "textobjects")
        end, { desc = "inside function" })

        -- Around / Inside pour class
        vim.keymap.set({ "x", "o" }, "ac", function()
            select.select_textobject("@class.outer", "textobjects")
        end, { desc = "around class" })
        vim.keymap.set({ "x", "o" }, "ic", function()
            select.select_textobject("@class.inner", "textobjects")
        end, { desc = "inside class" })

        -- Around / Inside pour parameter (arguments)
        vim.keymap.set({ "x", "o" }, "aa", function()
            select.select_textobject("@parameter.outer", "textobjects")
        end, { desc = "around parameter" })
        vim.keymap.set({ "x", "o" }, "ia", function()
            select.select_textobject("@parameter.inner", "textobjects")
        end, { desc = "inside parameter" })

        -- Around / Inside pour block ({ ... })
        vim.keymap.set({ "x", "o" }, "ab", function()
            select.select_textobject("@block.outer", "textobjects")
        end, { desc = "around block" })
        vim.keymap.set({ "x", "o" }, "ib", function()
            select.select_textobject("@block.inner", "textobjects")
        end, { desc = "inside block" })

        -- Around / Inside pour call (appel de fonction)
        vim.keymap.set({ "x", "o" }, "am", function()
            select.select_textobject("@call.outer", "textobjects")
        end, { desc = "around call" })
        vim.keymap.set({ "x", "o" }, "im", function()
            select.select_textobject("@call.inner", "textobjects")
        end, { desc = "inside call" })
    end,
}
