return {
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter", -- Carrega o plugin assim que entrar no modo de inserção
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",     -- Fonte do autocompletar do LSP (Java, etc)
      "hrsh7th/cmp-buffer",       -- Sugere palavras do arquivo atual
      "hrsh7th/cmp-path",         -- Autocompleta caminhos do sistema de arquivos
      "L3MON4D3/LuaSnip",         -- Engine de snippets
      "saadparwaiz1/cmp_luasnip", -- Fonte de snippets para o nvim-cmp
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        window = {
          -- Adiciona bordas arredondadas nos pop-ups
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-k>"] = cmp.mapping.select_prev_item(), -- Move para cima no pop-up
          ["<C-j>"] = cmp.mapping.select_next_item(), -- Move para baixo no pop-up
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),     -- Força a abertura do pop-up
          ["<C-e>"] = cmp.mapping.abort(),            -- Fecha o pop-up
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirma a seleção com Enter
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" }, -- Sugestões vindas do JDTLS/LSP
          { name = "luasnip" },  -- Snippets
          { name = "buffer" },   -- Palavras do buffer
          { name = "path" },     -- Caminhos de arquivos
        }),
      })
    end,
  },
}
