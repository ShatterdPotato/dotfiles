return {
  {
    "mfussenegger/nvim-lint",
    dependencies = {
      "rshkarin/mason-nvim-lint"
    },
    event =  {
      "BufReadPre",
      "BufNewFile"
    },
    config = function ()
      local lint = require("lint")
      lint.linters_by_ft = {
        python = {"pylint"},
        javascript = {"eslint_d"},
        typescript = {"eslint_d"},
        c = {"cpplint"},
        cpp = {"cpplint"}
      }
      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        group = vim.api.nvim_create_augroup("lint", { clear = true }),
        callback = function()
          lint.try_lint()
        end,
      })
    end
  },
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
      require("tiny-inline-diagnostic").setup({
        options = {
          multilines = {
            enabled = true,
          },
        },
      })
      vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
    end,
  }
}
