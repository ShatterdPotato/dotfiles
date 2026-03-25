return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
     -- Add nvim-ts-autotag
    { "windwp/nvim-ts-autotag" },
  },
  opts = {
    ensure_installed = {
      "html",
      "html_tags"
    },
  },
  lazy = false,
  build = ':TSUpdate'
}
