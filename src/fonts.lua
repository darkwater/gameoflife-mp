fonts = {}
love.graphics.setDefaultFilter("nearest", "nearest")

fonts.A = love.graphics.newImageFont("res/font.png", " abcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*()-=_+[]/?|.:',I")

--[[

fonts.getGlyph = function (font, glyph)
    local g = fonts[string.lower(font)][string.lower(glyph)]
    local t = {}

    for y,r in pairs(g) do
        for x,c in pairs(r) do
            if c == 1 then
                table.insert(t, {x=x, y=y})
            end
        end
    end

    return t, #g[1]
end

fonts["normal"] = {}

    fonts["normal"]["a"] = {
        {0,1,1,1,0,0},
        {1,0,0,0,1,0},
        {1,1,1,1,1,0},
        {1,0,0,0,1,0},
        {1,0,0,0,1,0},
    }
    fonts["normal"]["b"] = {
        {1,1,1,1,0,0},
        {1,0,0,0,1,0},
        {1,1,1,1,0,0},
        {1,0,0,0,1,0},
        {1,1,1,1,0,0},
    }
    fonts["normal"]["c"] = {
        {0,1,1,1,0,0},
        {1,0,0,0,1,0},
        {1,0,0,0,0,0},
        {1,0,0,0,1,0},
        {0,1,1,1,0,0},
    }
    fonts["normal"]["d"] = {
        {1,1,1,1,0,0},
        {1,0,0,0,1,0},
        {1,0,0,0,1,0},
        {1,0,0,0,1,0},
        {1,1,1,1,0,0},
    }
    fonts["normal"]["e"] = {
        {1,1,1,1,1,0},
        {1,0,0,0,0,0},
        {1,1,1,1,0,0},
        {1,0,0,0,0,0},
        {1,1,1,1,1,0},
    }
    fonts["normal"]["f"] = {
        {1,1,1,1,1,0},
        {1,0,0,0,0,0},
        {1,1,1,1,0,0},
        {1,0,0,0,0,0},
        {1,0,0,0,0,0},
    }
    fonts["normal"]["g"] = {
        {0,1,1,1,1,0},
        {1,0,0,0,0,0},
        {1,0,1,1,1,0},
        {1,0,0,0,1,0},
        {0,1,1,1,1,0},
    }
    fonts["normal"]["h"] = {
        {1,0,0,0,1,0},
        {1,0,0,0,1,0},
        {1,1,1,1,1,0},
        {1,0,0,0,1,0},
        {1,0,0,0,1,0},
    }
    fonts["normal"]["i"] = {
        {1,1,1,0},
        {0,1,0,0},
        {0,1,0,0},
        {0,1,0,0},
        {1,1,1,0},
    }
    fonts["normal"]["j"] = {
        {0,0,1,1,1,0},
        {0,0,0,0,1,0},
        {0,0,0,0,1,0},
        {1,0,0,0,1,0},
        {0,1,1,1,0,0},
    }
    fonts["normal"]["k"] = {
        {1,0,0,0,1,0},
        {1,0,0,1,0,0},
        {1,1,1,0,0,0},
        {1,0,0,1,0,0},
        {1,0,0,0,1,0},
    }
    fonts["normal"]["l"] = {
        {1,0,0,0,0,0},
        {1,0,0,0,0,0},
        {1,0,0,0,0,0},
        {1,0,0,0,0,0},
        {1,1,1,1,1,0},
    }
    fonts["normal"]["m"] = {
        {1,0,0,0,1,0},
        {1,1,0,1,1,0},
        {1,0,1,0,1,0},
        {1,0,0,0,1,0},
        {1,0,0,0,1,0},
    }
    fonts["normal"]["n"] = {
        {1,0,0,0,1,0},
        {1,1,0,0,1,0},
        {1,0,1,0,1,0},
        {1,0,0,1,1,0},
        {1,0,0,0,1,0},
    }
    fonts["normal"]["o"] = {
        {0,1,1,1,0,0},
        {1,0,0,0,1,0},
        {1,0,0,0,1,0},
        {1,0,0,0,1,0},
        {0,1,1,1,0,0},
    }
    fonts["normal"]["p"] = {
        {1,1,1,1,0,0},
        {1,0,0,0,1,0},
        {1,1,1,1,0,0},
        {1,0,0,0,0,0},
        {1,0,0,0,0,0},
    }
    fonts["normal"]["q"] = {
        {0,1,1,1,0,0},
        {1,0,0,0,1,0},
        {1,0,0,0,1,0},
        {1,0,0,1,1,0},
        {0,1,1,1,1,0},
    }
    fonts["normal"]["r"] = {
        {1,1,1,1,0,0},
        {1,0,0,0,1,0},
        {1,1,1,1,0,0},
        {1,0,0,0,1,0},
        {1,0,0,0,1,0},
    }
    fonts["normal"]["s"] = {
        {0,1,1,1,1,0},
        {1,0,0,0,0,0},
        {0,1,1,1,0,0},
        {0,0,0,0,1,0},
        {1,1,1,1,0,0},
    }
    fonts["normal"]["t"] = {
        {1,1,1,1,1,0},
        {0,0,1,0,0,0},
        {0,0,1,0,0,0},
        {0,0,1,0,0,0},
        {0,0,1,0,0,0},
    }
    fonts["normal"]["u"] = {
        {1,0,0,0,1,0},
        {1,0,0,0,1,0},
        {1,0,0,0,1,0},
        {1,0,0,0,1,0},
        {0,1,1,1,0,0},
    }
    fonts["normal"]["v"] = {
        {1,0,0,0,1,0},
        {1,0,0,0,1,0},
        {1,0,0,0,1,0},
        {0,1,0,1,0,0},
        {0,0,1,0,0,0},
    }
    fonts["normal"]["w"] = {
        {1,0,0,0,1,0},
        {1,0,0,0,1,0},
        {1,0,1,0,1,0},
        {1,1,0,1,1,0},
        {1,0,0,0,1,0},
    }
    fonts["normal"]["x"] = {
        {1,0,0,0,1,0},
        {0,1,0,1,0,0},
        {0,0,1,0,0,0},
        {0,1,0,1,0,0},
        {1,0,0,0,1,0},
    }
    fonts["normal"]["y"] = {
        {1,0,0,0,1,0},
        {0,1,0,1,0,0},
        {0,0,1,0,0,0},
        {0,0,1,0,0,0},
        {0,0,1,0,0,0},
    }
    fonts["normal"]["z"] = {
        {1,1,1,1,1,0},
        {0,0,0,1,0,0},
        {0,0,1,0,0,0},
        {0,1,0,0,0,0},
        {1,1,1,1,1,0},
    }
    fonts["normal"][" "] = {
        {0,0},
        {0,0},
        {0,0},
        {0,0},
        {0,0},
    }
]]
