local wezterm = require 'wezterm'

local M = {}

function M.apply_to_config(config)
  config.keys = {
      -- Move to the left pane
      {
        key = 'h',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.ActivatePaneDirection 'Left',
      },
      -- Move to the right pane
      {
        key = 'l',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.ActivatePaneDirection 'Right',
      },
      -- Move to the upper pane
      {
        key = 'k',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.ActivatePaneDirection 'Up',
      },
      -- Move to the lower pane
      {
        key = 'j',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.ActivatePaneDirection 'Down',
      },
      {
        key = 's',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.SplitVertical{domain="CurrentPaneDomain"},
      },
      {
        key = 'v',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.SplitHorizontal{domain="CurrentPaneDomain"},
      },
    }
end

return M
