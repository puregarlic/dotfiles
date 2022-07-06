local present, sig = pcall(require, "lsp_signature")

if not present then
   print "lsp_signature not present"
   return
end

sig.setup()
