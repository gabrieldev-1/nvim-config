return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("dashboard").setup({
        theme = 'doom',
        config = {
            header = {
              "    =================     ===============     ===============   ========  ========  ",
              "\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //  ",
              "||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||  ",
              "|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||  ",
              "||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||  ",
              "|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||  ",
              "||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||  ",
              "|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||  ",
              "||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||  ",
              "||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||  ",
              "||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||  ",
              "||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||  ",
              "||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||  ",
              "||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||  ",
              "||   .=='    _-'          `-__\\._-'         `-_./__-'         `' |. /|  |   ||  ",
              "||.=='    _-'                                                     `' |  /==.||  ",
              "=='    _-'                                                            \\/   `==  ",
              "\\   _-'                                                                `-_   /  ",
              " `'                                                                             ",
            },
            center = {
                {
                  icon = "󰋚  ",
                  desc = "Recently opened files              ",
                  shortcut = "r",
                  action = "Telescope oldfiles",
                },
                {
                  icon = "󰍉  ",
                  desc = "Find File                          ",
                  shortcut = "f",
                  action = "Telescope find_files",
                },
                {
                  icon = "󰈔  ",
                  desc = "New File                           ",
                  shortcut = "n",
                  action = "ene | startinsert",
                },
                {
                  icon = "󰍉  ",
                  desc = "Find Word                          ",
                  shortcut = "w",
                  action = "Telescope live_grep",
                },
                {
                  icon = "  ",
                  desc = "Open Personal dotfiles             ",
                  shortcut = "c",
                  action = "edit $MYVIMRC",
                },
                {
                  icon = "󰅚  ",
                  desc = "Quit Neovim                        ",
                  shortcut = "q",
                  action = "qa",
                },
            },
                footer = {}  --your footer
            }
      })
    end,
  },
}
