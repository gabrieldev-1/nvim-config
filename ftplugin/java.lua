local capabilities = require("cmp_nvim_lsp").default_capabilities()

local config = {
  cmd = { "jdtls" },
  capabilities = capabilities,
  root_dir = vim.fs.dirname(vim.fs.find({ "pom.xml", "gradlew", ".git" }, { upward = true })[1]),
  settings = {
    java = {
      signatureHelp = { enabled = true },
      contentProvider = { preferred = "fernflower" },
      completion = {
        favoriteStaticMembers = {
          "org.hamcrest.MatcherAssert.assertThat",
          "org.hamcrest.Matchers.*",
          "org.junit.jupiter.api.Assertions.*",
          "java.util.Objects.requireNonNull",
          "java.util.List",
          "java.util.ArrayList",
        },
      },
      sources = {
        organizeImports = {
          starThreshold = 9999,
          staticStarThreshold = 9999,
        },
      },
    },
  },
}

require("jdtls").start_or_attach(config)
