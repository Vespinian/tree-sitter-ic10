# Tree-sitter IC10

Tree-sitter grammar for IC10 MIPS used in the game Stationeers

## Add stuff

Install the tree-sitter-cli
Add new operators, logictypes, etc in their respective txt file in data/
run `tree-sitter generate`
run `cargo build` if you want to regen the lsp

## Install in nvim

Add this in your nvim config (assuming you already have tree-sitter)
```
local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
parser_config.ic10 = {
  install_info = {
    url = 'your_repo_path', -- local path or git repo
    files = { 'src/parser.c' }, -- note that some parsers also require src/scanner.c or src/scanner.cc
    -- optional entries:
    branch = 'master', -- default branch in case of git repo if different from master
    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
  },
  filetype = 'ic10', -- if filetype does not match the parser name
  highlight = true,
}
```
