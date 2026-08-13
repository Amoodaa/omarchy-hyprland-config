-- Personal window rules.
-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
--
-- Omarchy's defaults already handle `suppressevent maximize` and the XWayland
-- drag/nofocus fix, so only the personal rules live here.

-- Slightly more opacity than the Omarchy default of 0.985 0.96.
o.window({ tag = "default-opacity" }, { opacity = "0.97 0.9" })
