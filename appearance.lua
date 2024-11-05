local wezterm = require 'wezterm'

local M = {}

function M.apply_to_config(config)
  config.color_scheme = 'rose-pine'
  config.font = wezterm.font('JetBrains Mono')
  config.font_size = 12.0
  config.enable_tab_bar = false
  config.window_background_opacity = 0.6

end

return M
