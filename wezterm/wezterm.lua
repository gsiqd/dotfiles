local wezterm = require "wezterm"
local config = wezterm.config_builder()

config.font = wezterm.font("JetBrains Mono NL")
config.font_size = 16
config.window_background_opacity = 0.75

-- tab bar
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

return config
