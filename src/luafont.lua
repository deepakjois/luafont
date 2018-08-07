local luafont = require("luafont.base")
local TTFFont = require("luafont.TTFFont")
-- TODO add more formats

-- Register font formats
luafont.registerFormat(TTFFont)

return luafont
