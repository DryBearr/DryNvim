local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" -- where lazy lua gonna be cloned  
if not (vim.uv or vim.loop).fs_stat(lazypath) then  -- if lazy does not exist clone it 
  local lazyrepo = "https://github.com/folke/lazy.nvim.git" -- repo path
  local out = vim.fn.system({"git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath}) --clone command
  if vim.v.shell_error ~= 0 then
    vim.api.nvim.ech({
      {"Failed to clone lazy.nvim:\n", "ErrorMsg"},
      {out, "WarningMsg"},
      {"\nPress any key to exit..."},
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end 

vim.opt.rtp:prepend(lazypath)
