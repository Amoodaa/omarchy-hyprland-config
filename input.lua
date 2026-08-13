-- Keep only your personal input overrides here. Uncommented settings below
-- replace Omarchy's defaults.

-- Keyboard layout and options.
-- See https://wiki.hypr.land/Configuring/Basics/Variables/#input
hl.config({
  input = {
    -- Use multiple keyboard layouts and switch between them with Alt + Shift.
    kb_layout = "us,ara",
    kb_options = "compose:caps,grp:alt_shift_toggle",

    -- Change speed of keyboard repeat.
    repeat_rate = 50,
    repeat_delay = 600,

    -- Start with numlock on by default.
    numlock_by_default = true,

    -- Increase sensitivity for mouse/trackpad (default: 0).
    sensitivity = 0.5,

    -- Turn off mouse acceleration (default: adaptive).
    accel_profile = "flat",
    force_no_accel = true,

    scroll_method = "on_button_down",

    -- Switch keyboard focus only on click on window.
    -- https://wiki.hypr.land/Configuring/Basics/Variables/#follow-mouse-cursor
    follow_mouse = 2,

    touchpad = {
      -- Use natural (inverse) scrolling.
      natural_scroll = true,

      -- Use two-finger clicks for right-click instead of lower-right corner.
      clickfinger_behavior = true,

      -- Control the speed of your scrolling.
      scroll_factor = 0.4,
    },
  },
})

-- App-specific touchpad scroll speeds.
o.window("(Alacritty|kitty|foot)", { scroll_touchpad = 1.5 })
o.window("com.mitchellh.ghostty", { scroll_touchpad = 0.2 })

-- Enable touchpad gestures for changing workspaces.
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Gestures/
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
