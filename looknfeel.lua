-- Change the default Omarchy look'n'feel.

-- https://wiki.hypr.land/Configuring/Basics/Variables/#general
hl.config({
  general = {
    gaps_in = 2,
    gaps_out = 3,
    border_size = 2,
  },
})

-- https://wiki.hypr.land/Configuring/Basics/Variables/#decoration
hl.config({
  decoration = {
    -- Use round window corners.
    rounding = 2,
  },
})

-- Keep background applications from switching to their workspace when they
-- send an activation request (for example, Chrome on workspace 8).
hl.config({
  misc = {
    focus_on_activate = false,
  },
})

-- Fade animations disabled -- triggered a CMonitor segfault in Hyprland v0.54.2
-- (damageMonitor dangling pointer). Re-enable if that is fixed upstream.
hl.animation({ leaf = "fade", enabled = false })
