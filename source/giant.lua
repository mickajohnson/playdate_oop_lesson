import 'player'

local gfx <const> = playdate.graphics
local pd <const> = playdate


class('Giant').extends(Player)

function Giant:init(x, y)
  local GiantImage = gfx.image.new('images/giant')
  Giant.super.init(self, x, y, GiantImage)
  self.moveSpeed = 2
  self.projectileSpeed = 3
end

function Giant:ability()
  self:shoot(self.x, self.y)
  self:shoot(self.x+10, self.y)
  self:shoot(self.x-10, self.y)
end