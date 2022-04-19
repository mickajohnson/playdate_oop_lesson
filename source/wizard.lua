import 'player'

local gfx <const> = playdate.graphics
local pd <const> = playdate


class('Wizard').extends(Player)

function Wizard:init(x, y)
  local WizardImage = gfx.image.new('images/wizard')
  Wizard.super.init(self, x, y, WizardImage)
  self.moveSpeed = 4
  self.projectileSpeed = 8
  self.teleportDistance = 30
end

function Wizard:ability()
  if pd.buttonIsPressed(pd.kButtonLeft) then
    self:moveBy(-self.teleportDistance, 0)
  elseif pd.buttonIsPressed(pd.kButtonRight) then
    self:moveBy(self.teleportDistance, 0)
  end
end