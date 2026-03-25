return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config =  function()
      require("telescope").load_extension("persisted") 

      vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
      vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
      vim.keymap.set("n", "<leader>pl", "<cmd>Telescope persisted<cr>", { desc = "open project manager" })
      vim.keymap.set("n", "<leader>ps", "<cmd>Persisted save<cr>", { desc = "save to project manager" })
    end
}
