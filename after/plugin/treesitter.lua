print('after plugin')
require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = {
        "javascript",
        "typescript",
        "json",
        "html",
        "markdown",
        "lua",
        "regex",
        "css",
        "scss",
        "vim",
        "pug",
        "bash",
        "http",
        "json5",
        "markdown_inline",
        "sql",
        "tsx",
        "vue",
        "yaml",
        "c",
        "c_sharp",
        "dockerfile",
    },
    autotag = {
        enable = true,
    },
    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    }
}
