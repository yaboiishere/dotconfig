require("fuzzy_search")
require("orgmode").setup_ts_grammar()
require("snippets")
require("github")
require("table-of-contents").setup()
require("treesitter")
require("orgmode").setup({
  org_agenda_files = { "~/org/*" },
  org_default_notes_file = "~/org/notes.org",
})
require("lsp")
require("completion")
require("debugging")
require("statusline")

require('lspkind').init({
  -- DEPRECATED (use mode instead): enables text annotations
  --
  -- default: true
  -- with_text = true,

  -- defines how annotations are shown
  -- default: symbol
  -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
  mode = 'text_symbol',

  -- default symbol map
  -- can be either 'default' (requires nerd-fonts font) or
  -- 'codicons' for codicon preset (requires vscode-codicons font)
  --
  -- default: 'default'
  preset = 'default',

  -- override preset symbols
  --
  -- default: {},
  -- symbol_map = {
  Text = "",
  Method = "",
  Function = "",
  Constructor = "",
  Field = "ﰠ",
  Variable = "",
  Class = "ﴯ",
  Interface = "",
  Module = "",
  Property = "ﰠ",
  Unit = "塞",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "פּ",
  Event = "",
  Operator = "",
  TypeParameter = ""
  -- },
})

vim.keymap.set("n", "<leader><leader>S", "<cmd>source ~/.config/nvim/lua/snippets.lua<CR>")
vim.keymap.set("n", "<leader><leader>L", "<cmd>source ~/.config/nvim/lua/config.lua<CR>")
vim.keymap.set("n", "<leader><leader>R", "<cmd>source ~/.config/nvim/init.vim<CR>")
vim.keymap.set("n", "<leader><TAB>", "<C-6>")
