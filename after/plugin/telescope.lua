local telescope = require('telescope')
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')


telescope.setup {
    defaults = {
        color_devicons = false,
        prompt_prefix = "$ ",
        file_ignore_patterns = { "^.git/" },
        mappings = {
            i = {
                ['<esc>'] = actions.close
            }
        }
    }
}

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
telescope.load_extension('fzf')

local M = {}

M.search_dotfiles = function()
    require('telescope.builtin').find_files({
        prompt_title = "<.dotfiles>",
        cwd = '~/.dotfiles',
        hidden = true
    })
end

M.project_files = function()
    local opts = {}
    local ok = pcall(require('telescope.builtin').git_files, opts)
    if not ok then require('telescope.builtin').find_files(opts) end
end

--vim.api.nvim_set_keymap('n', '<Leader>p', ':lua require\'lanvim.telescope\'.project_files()<Cr>', {noremap = true, silent = true})
--vim.api.nvim_set_keymap('n', '<Leader>df', ':lua require\'lanvim.telescope\'.search_dotfiles()<Cr>', {noremap = true, silent = true})
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})

return M
