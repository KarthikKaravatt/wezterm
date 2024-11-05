-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- load all the modules
local appearance = require 'appearance'
local shell = require 'shell'
local keybinds = require 'key-binds'

appearance.apply_to_config(config)
shell.apply_to_config(config)
keybinds.apply_to_config(config)

return config
