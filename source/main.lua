import "CoreLibs/graphics"
import "CoreLibs/object"
import "CoreLibs/sprites"
import "CoreLibs/timer"

import "knight"
import "giant"
import "wizard"

local gfx <const> = playdate.graphics
local pd <const> = playdate

local function initialize()
    local playerInstance = Wizard(200, 200)
    playerInstance:add()

    local name = playerInstance.className
    local isGiant = playerInstance:isA(Giant)
    local isKnight = playerInstance:isA(Knight)
end

initialize()

function pd.update()
    gfx.sprite.update()
    playdate.timer.updateTimers()
end