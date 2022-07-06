local present, carbon = pcall(require, "carbon-now")

if not present then
   return
end

carbon.setup {
   open_cmd = "open",
   options = {
      bg = "#50E3C2",
      drop_shadow = true,
      drop_shadow_offset_y = "20px",
      drop_shadow_blur = "68px",
      theme = "panda-syntax",
      window_theme = "none",
      language = "auto",
      font_family = "JetBrains Mono",
      font_size = "16px",
      window_controls = false,
      line_numbers = true,
      watermark = false,
      width = 680,
   },
}
