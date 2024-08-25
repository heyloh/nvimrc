return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
      local lazy_status = require("lazy.status") -- to configure lazy pending updates count

      require('lualine').setup({
        options = { theme = 'palenight' },
        sections = {
          lualine_x = {
            {
              lazy_status.updates,
              cond = lazy_status.updates,
            },
            { "encoding" },
            { "fileformat" },
            { "filetype" }
          }
        }
      })
    end
}
