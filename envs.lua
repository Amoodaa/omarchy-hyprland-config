-- Extra env variables.
-- hl.env("MY_GLOBAL_ENV", "setting")

-- Multi-GPU: force the NVIDIA dGPU to be the PRIMARY render device.
-- The external monitor (DP-1) is wired to the dGPU (PCI 01:00.0). By default
-- aquamarine picked the Intel iGPU as primary and copied every frame across
-- PCIe to the dGPU for scanout -> choppy. Listing the dGPU first makes render
-- and scanout happen on the same card. Colon-free aliases point to the stable
-- by-path symlinks because Aquamarine uses colons to separate device paths.
-- dGPU = pci-0000:01:00.0 (nvidia), iGPU = pci-0000:00:02.0 (i915)
hl.env(
  "AQ_DRM_DEVICES",
  os.getenv("HOME") .. "/.config/hypr/drm-nvidia:" .. os.getenv("HOME") .. "/.config/hypr/drm-intel"
)
