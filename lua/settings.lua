vim.cmd('set iskeyword+=-') -- treat dash separated words as a word text object"
vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
vim.cmd('set inccommand=split') -- Make substitution work in realtime
vim.o.hidden = O.hidden_files -- Required to keep multiple buffers open multiple buffers
vim.o.title = true
TERMINAL = vim.fn.expand('$TERMINAL')
vim.cmd('let &titleold="'..TERMINAL..'"')
vim.o.titlestring="%<%F%=%l/%L - nvim"
vim.wo.wrap = O.wrap_lines -- Display long lines as just one line
vim.cmd('set whichwrap+=<,>,[,],h,l') -- move to next line with theses keys
vim.cmd('syntax on') -- syntax highlighting
vim.o.pumheight = 10 -- Makes popup menu smaller
vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.cmdheight = 2 -- More space for displaying messages
vim.o.textwidth = 80 -- break line after 80 characters
vim.o.colorcolumn = '+1,+41' -- colorcolumn after 80 and 120 characters
vim.o.mouse = "a" -- Enable your mouse
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.termguicolors = true -- set term gui colors most terminals support this
vim.o.splitright = true -- Vertical splits will automatically be to the right
-- vim.o.t_Co = "256" -- Support 256 colors
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.cmd('set ts=4') -- Insert 2 spaces for a tab
vim.cmd('set sw=4') -- Change the number of space characters inserted for indentation
vim.cmd('set expandtab') -- Converts tabs to spaces
vim.bo.smartindent = true -- Makes indenting smart
vim.wo.number = O.number -- set numbered lines
vim.wo.relativenumber = O.relative_number -- set relative number
vim.wo.cursorline = O.cursorline -- set highlighting of the current line
vim.o.showtabline = 2 -- Always show tabs
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.o.backup = false -- This is recommended by coc
vim.o.backupdir = string.format("%s/.cache/nvim/backup", os.getenv("HOME"))
vim.o.writebackup = false -- This is recommended by coc
vim.o.swapfile = false -- Do not write any swp files
vim.o.undodir = CACHE_PATH .. '/undo' -- Set undo directory
vim.o.undofile = true -- Enable persistent undo
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vim.o.updatetime = 300 -- Faster completion
vim.o.timeoutlen = O.timeoutlen -- By default timeoutlen is 1000 ms
vim.o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
-- vim.g.nvim_tree_disable_netrw = O.nvim_tree_disable_netrw -- enable netrw for remote gx gf support (must be set before plugin's packadd)
vim.cmd('filetype plugin on') -- filetype detection
-- vim.o.guifont = "JetBrainsMono\\ Nerd\\ Font\\ Mono:h18"
-- vim.o.guifont = "Hack\\ Nerd\\ Font\\ Mono"
-- vim.o.guifont = "SauceCodePro Nerd Font:h17"
vim.o.guifont = "FiraCode Nerd Font:h17"
vim.o.swapfile = false
vim.o.directory = string.format("%s/.cache/nvim/swap", os.getenv("HOME"))

-- persistent undo
vim.o.undodir = string.format("%s/.cache/nvim/undo", os.getenv("HOME"))
vim.o.undofile = true
vim.o.undolevels = 1000
vim.o.undoreload = 10000
-- vim.o.guifont = "JetBrains\\ Mono\\ Regular\\ Nerd\\ Font\\ Complete"
