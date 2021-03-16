require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,              -- false will disable the whole extension
    },
    playground = {
        enable = true,
        disable = {},
        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false -- Whether the query persists across vim sessions
    },
    rainbow = {
        enable = true 
    }
}

-- require'nvim-treesitter.configs'.setup {
--   refactor = {
--     smart_rename = {
--       enable = true,
--       keymaps = {
--         smart_rename = "grr",
--       },
--     },
--   },
-- }

