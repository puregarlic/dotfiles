local present, zen_mode = pcall(require, "zen-mode")

if not present then
   return
end

zen_mode.setup {
   window = {
      backdrop = 1,
   },
   plugins = {
      twilight = {
         enabled = true,
      },
   },
}
