-- Extra autostart processes.
-- o.launch_on_start("my-service")

-- Turn the internal laptop panel off while the main display is connected.
o.exec_on_start(os.getenv("HOME") .. "/.config/hypr/scripts/internal-display-auto")

-- Restore the previous session's windows.
o.launch_on_start("hyprsession")

-- Communication apps.
o.exec_on_start("[workspace 1 silent] " .. o.launch("slack"))
o.exec_on_start("[workspace 9 silent] " .. o.launch("discord"))
o.exec_on_start("[workspace 10 silent] " .. o.launch("signal-desktop"))

-- Chrome profiles.
o.exec_on_start('[workspace 2 silent] ' .. o.launch('google-chrome-stable --profile-directory="Profile 2"'))
o.exec_on_start('[workspace 8 silent] ' .. o.launch('google-chrome-stable --profile-directory="Default"'))
