return{
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
  require("neo-tree").setup({
      event_handlers = {
        {
          event = "file_opened",
          handler = function(file_path)
          require("neo-tree.command").execute({action = "close"})
          end
        },
      }
    })
  vim.keymap.set('n', '<C-n>' ,':Neotree filesystem left <CR>', {})
end
}

--m = move 
--d = delete
--a = add dir
--r = rename
--c = copy
--y = copy to clipboard
--p = past from clipboard
--i = show file details
--. = set root
--D = fuzzy find dir
--/ = fuzzy find
--A = git add all
--gc = git commit
--gp = git push
--More git.
