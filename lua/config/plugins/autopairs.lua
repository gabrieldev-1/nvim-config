return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter", -- Carrega o plugin assim que você entra no modo de inserção
    config = function()
      local autopairs = require("nvim-autopairs")

      autopairs.setup({
        check_ts = true, -- Usa o Treesitter para verificar regras sintáticas (ex: não fechar aspas dentro de comentários)
      })
    end,
  },
}
