return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Header semplice (vuoto per mantenere minimal)
    dashboard.section.header.val = {
  " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
}


    -- Pulsanti centrati
    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", ":ene <BAR> startinsert<CR>"),
      dashboard.button("r", "󱋢  Recent files", ":Telescope oldfiles<CR>"),
      dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
      dashboard.button("l", "󰒲  Lazy", ":Lazy<CR>"),
      dashboard.button("t", "  Open terminal", ":terminal<CR>"),
      dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
    }

    -- Layout centrato
    dashboard.config.layout = {
      { type = "padding", val = 8 },  -- spazio sopra
      dashboard.section.header,
      { type = "padding", val = 2 },  -- piccolo spazio
      dashboard.section.buttons,
    }

    alpha.setup(dashboard.config)
  end,
}

