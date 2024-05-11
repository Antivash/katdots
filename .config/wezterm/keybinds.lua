local M = {}
local wezterm = require("wezterm")
local act = wezterm.action
local utils = require("utils")

---------------------------------------------------------------
--- keybinds
---------------------------------------------------------------
M.tmux_keybinds = {
}

M.default_keybinds = {
	
}

function M.create_keybinds()
	return utils.merge_lists(M.default_keybinds, M.tmux_keybinds)
end

M.key_tables = {
	
}

M.mouse_bindings = {
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "NONE",
		action = act({ CompleteSelection = "PrimarySelection" }),
	},
	{
		event = { Up = { streak = 1, button = "Right" } },
		mods = "NONE",
		action = act({ PasteFrom = 'Clipboard' }),
	},
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = "OpenLinkAtMouseCursor",
	},
	-- {
	-- 	event = { Up = { streak = 1, button = 'Middle' } },
	-- 	mods = 'NONE',
	-- 	action = act({ PasteFrom = "PrimarySelection" })
	-- },
	-- {
	-- 	event = { Down = { streak = 1, button = 'Middle' } },
	-- 	mods = 'NONE',
	-- 	action = act.DisableDefaultAssignment 
	-- },
}

return M
