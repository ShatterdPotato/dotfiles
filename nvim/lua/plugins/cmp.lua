return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "onsails/lspkind.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets", -- Optional: Snippet collection
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      window = {
        completion = {
          border = "rounded",
          side_padding = 1,
          winhighlight = "Normal:Normal,FloatBorder:ModeMsg,CursorLine:PmenuSel,Search:None"
        },
        documentation = {
          border = "rounded",
          side_padding = 1,
          winhighlight = "Normal:Normal,FloatBorder:BorderBG,CursorLine:PmenuSel,Search:None"
        }
      },
      sources = {
        { name = "nvim_lsp" }
      },
      mapping = cmp.mapping.preset.insert({
        ['<Up>'] = cmp.mapping({
          i = function(fallback)
            if cmp.visible() then
              cmp.close() -- Optionally close the menu
            end
            fallback() -- Fallback to standard Neovim behavior
          end,
          s = function(fallback)
            fallback()
          end,
        }),
        ['<Down>'] = cmp.mapping({
          i = function(fallback)
            if cmp.visible() then
              cmp.close() -- Optionally close the menu
            end
            fallback() -- Fallback to standard Neovim behavior
          end,
          s = function(fallback)
            fallback()
          end,
        }),
        ['<S-Tab>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
        ['<Tab>'] = cmp.mapping.select_next_item({behavior = 'select'}),

        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({select = false}),

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Scroll up and down in the completion documentation
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
      }),
      snippet = {
        expand = function(args)
          vim.snippet.expand(args.body)
        end
      }
    })
  end,
}


