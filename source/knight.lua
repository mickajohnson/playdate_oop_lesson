import 'player'

local gfx <const> = playdate.graphics
local pd <const> = playdate


class('Knight').extends(Player)

function Knight:init(x, y)
  local knightImage = gfx.image.new('images/knight')
  Knight.super.init(self, x, y, knightImage)
  self.moveSpeed = 5
  self.projectileSpeed = 5
end

function Knight:ability()
  Knight.super.ability(self)
  pd.timer.performAfterDelay(250, function() self:timerCallback() end)
  pd.timer.performAfterDelay(350, function() self:timerCallback() end)
end