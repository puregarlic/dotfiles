local present, todos = pcall(require, "todo-comments")

if not present then
   return
end

todos.setup()
