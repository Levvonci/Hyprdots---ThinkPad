return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local icons = require("nvim-web-devicons")

    require("lualine").setup({
      options = {
        theme = "catppuccin",
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
        globalstatus = true,
        disabled_filetypes = { "NvimTree", "packer" },
      },
      sections = {
        -- Estrema sinistra: modalità con icona
        lualine_a = {
          {
            "mode",
            fmt = function(str)
              local mode_icons = {
                ["NORMAL"] = " ",
                ["INSERT"] = " ",
                ["VISUAL"] = " ",
                ["V-LINE"] = "│",
                ["V-BLOCK"] = "▭",
                ["REPLACE"] = "󰬲 ",
                ["COMMAND"] = " ",
              }
              return (mode_icons[str] or str) .. " " .. str
            end,
          },
        },
        -- Branch Git + diff
        lualine_b = { "branch", "diff" },
        -- Filename con icona del tipo file
        lualine_c = {
          {
            "filename",
            file_status = true, -- mostra [+] se modificato
            path = 1,           -- mostra il percorso relativo
            symbols = {
              modified = " ",
              readonly = " ",
              unnamed = " ",
            },
          },
        },
        -- Diagnostica LSP + encoding + filetype
        lualine_x = {
          {
            "diagnostics",
            sources = { "nvim_lsp" },
            symbols = { error = " ", warn = " ", info = " ", hint = " " },
          },
          "encoding",
          {
            "filetype",
            icon_only = false,
            icon = { align = "right" },
          },
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}

