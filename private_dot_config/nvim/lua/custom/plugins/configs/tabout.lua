local present, tabout = pcall(require, "tabout")

if not present then
  return
end

tabout.setup()
