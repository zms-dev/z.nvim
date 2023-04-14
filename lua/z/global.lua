---@class z.Global
---@field version number

if _G._Z == nil then
  ---@type z.Global
  _G._Z = {
    version = 0.1,
  }
end

return _G._Z
