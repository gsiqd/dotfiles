local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.font = "Fira Code NerdFont 9"

theme.bg_normal = "#141616"
theme.bg_focus = "#141616"
theme.bg_urgent = "#ffff00"
theme.bg_minimize = "#1f2122"
theme.bg_systray = theme.bg_normal

theme.fg_normal = "#FAFAFC"
theme.fg_focus = "#FAFAFC"
theme.fg_urgent = "#141616"
theme.fg_minimize = "#8E8E8E"

theme.useless_gap = dpi(3)
theme.border_width = dpi(0)
theme.border_normal = "#FAFAFC"
theme.border_focus = "#FAFAFC"
theme.border_marked = "#00ff00"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:

theme.tooltip_opacity = 1

theme.taglist_bg_focus = "#141616"
theme.taglist_fg_focus = "#FAFAFC"

theme.taglist_bg_empty = "#141616"
theme.taglist_fg_empty = "#8E8E8E"

theme.taglist_bg_occupied = "#141616"
theme.taglist_fg_occupied = "#8E8E8E"

-- Generate taglist squares:

local taglist_square_size = dpi(0)
local taglist_color = "#141616"

theme.taglist_squares_sel = theme_assets.taglist_squares_sel(taglist_square_size, taglist_color)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(taglist_square_size, taglist_color)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

return theme
