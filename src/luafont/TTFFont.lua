local TTFFont = {}
TTFFont.__index = TTFFont
-- TODO set a metatable for TTFFont for lazy loading

function TTFFont.probe(buffer)
  local format = string.sub(buffer, 0, 4)

  return format == "true" or
    format == "OTTO" or
    format == string.char(0, 1, 0, 0)
end

function TTFFont.new()
  -- TODO implement this
  return setmetatable({}, TTFFont)
end

TTFFont.__name = 'TTFFont'

return TTFFont
