package.path = os.getenv("PWD") .. "/lua/?.lua;" .. package.path

local Compatibility = require("busted.compatibility")
local Runner = require("busted.runner")

local function exit(code)
  vim.schedule(function()
    vim.cmd(("cq %d"):format(code))
  end)
end

Compatibility.exit = exit

Runner({
  standalone = false,
  directory = vim.loop.fs_realpath(_G.arg[1]),
  coverage = true,
  verbose = true,
})

exit(0)
