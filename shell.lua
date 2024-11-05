local wezterm = require 'wezterm'

local M = {}

function M.apply_to_config(config)
  config.default_cwd = wezterm.home_dir
  if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
    -- For window also get rid of the startup message
    config.default_prog = { 'pwsh.exe', '-NoLogo' }
  end
end

return M
