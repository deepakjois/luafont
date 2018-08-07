local r = require("restructure")

local luafont = {}

luafont.logErrors = false

local formats = {}

luafont.registerFormat = function(format)
    table.insert(formats, format)
end

luafont.open = function(filename, postscriptName)
    local file = io.open(filename)
    local buffer = file:read("a")
    file:close()
    return luafont.create(buffer, postscriptName)
end

luafont.create = function(buffer, postscriptName)
    for _, format in ipairs(formats) do
        if format.probe(buffer) then
            local font = format.new(r.DecodeStream.new(buffer))
            if (postscriptName) then
                return font.getFont(postscriptName)
            end
            return font
        end
    end
    error("Unknown font format")
end

return luafont
