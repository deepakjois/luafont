local font = require("luafont")

describe(
    "luafont",
    function()
        it(
            "can load a TTF file",
            function()
                local f = font.open("spec/data/OpenSans/OpenSans-Regular.ttf")
                assert.are_equal("TTFFont", f.__name)
            end
        )

        it(
            "throws an error when loading an invalid font file",
            function()
                assert.has_error(
                    function()
                        font.open("spec/data/invalid.txt")
                    end,
                    "Unknown font format"
                )
            end
        )
    end
)
