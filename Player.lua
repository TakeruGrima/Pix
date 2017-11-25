require("sprite")
require("map")
--object pixela
local pixela = {}
--variables
--contient les matrices du personnage
pixela.graph = {}

--idle
pixela.graph[0] = {
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0},
  {0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0},
  {0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0},
  {0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0},
  {0,0,0,1,0,0,0,0,0,1,1,1,1,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,0,1,0,0,0,1,1,1,1,0,0,0,0},
  {0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0},
  {0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0},
  {0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0},
  {0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0},
  {1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1}
}
--walk1
pixela.graph[1] ={
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0},
  {0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0},
  {0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0},
  {0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0},
  {0,0,0,1,0,0,0,0,0,1,1,1,1,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,0,1,0,0,0,1,1,1,1,0,0,0,0},
  {0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0},
  {0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0},
  {0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0},
  {0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,0,1,1,0,0},
  {1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1}
}
--walk2
pixela.graph[2] = {
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0},
  {0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0},
  {0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0},
  {0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0},
  {0,0,0,1,0,0,0,0,0,1,1,1,1,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,0,1,0,0,0,1,1,1,1,0,0,0,0},
  {0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0},
  {0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0},
  {0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0},
  {0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0},
  {0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0},
  {1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1}
}
--walk3
pixela.graph[3] = {
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0},
  {0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0},
  {0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0},
  {0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0},
  {0,0,0,0,1,0,0,0,0,0,1,1,1,1,0,0},
  {0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0},
  {0,0,0,0,0,1,0,0,0,1,1,1,1,0,0,0},
  {0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0},
  {0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0},
  {0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0},
  {0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0},
  {0,1,1,0,0,0,0,0,0,0,0,0,0,1,0,0},
  {0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0},
  {1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1}
}

pixela.bJumpReady = true
pixela.jumpVelocity = -380

pixela.life = 5

newgraph = {}
--fonction d'initialisation
function pixela:init(width,height)

  id = 0
  for line in love.filesystem.lines("SpritesTabs/player.txt") do 
    if string.sub(line,1,1)=="$" then
      id = id+1
      newgraph[id] = {}
    else
      newgraph[id][#newgraph[id] + 1] = line
    end
  end
  
  self.sprite = CreateSprite("player",0,17*TILESIZE - (#newgraph[1][1])*2,(#newgraph[1][1])*2,#newgraph[1]*2)
  self.sprite.AddAnimation("idle", {newgraph[1]})
  self.sprite.AddAnimation("saut", {newgraph[8]})
  self.sprite.AddAnimation("postjump", {newgraph[7]})
  self.sprite.AddAnimation("move", {newgraph[1],newgraph[3],newgraph[4],newgraph[5],
    newgraph[4],newgraph[3],newgraph[1]})
  self.sprite.PlayAnimation("idle")
end

--fonction de draw
function pixela:draw()
  drawSprite(self.sprite)
end

--fonction update du personnage
function pixela:update(dt)
  -- Locals for Physics
  local accel = 500
  local friction = 280
  local maxSpeed = 150
  local jumpVelocity = -280

  --stop!
  -- if self.sprite.currentAnimation == "idle" and self.sprite.vx ~=0 then
  --   self.sprite.vx = 0 
  --end
  if self.sprite.vx > 0 then
    self.sprite.vx = self.sprite.vx - friction * dt
    if self.sprite.vx < 0 then self.sprite.vx = 0 end
  end
  if self.sprite.vx < 0 then
    self.sprite.vx = self.sprite.vx + friction * dt
    if self.sprite.vx > 0 then self.sprite.vx = 0 end
  end
  local newAnimation = "idle"
  -- Keyboard
  if love.keyboard.isDown("right") then
    self.sprite.vx = self.sprite.vx + accel*dt
    if self.sprite.vx > maxSpeed then self.sprite.vx = maxSpeed end
    newAnimation = "move"
    self.sprite.flip = false
  end
  if love.keyboard.isDown("left") then
    self.sprite.vx = self.sprite.vx - accel*dt
    if self.sprite.vx < -maxSpeed then self.sprite.vx = -maxSpeed end
    newAnimation = "move"
    self.sprite.flip = true
  end
  if love.keyboard.isDown("up") and self.sprite.standing and self.bJumpReady then
    self.sprite.vy = self.jumpVelocity
    self.sprite.standing = false
    self.bJumpReady = false
    newAnimation = "postjump"
  end
  if self.sprite.standing == false then
    newAnimation = "saut"
  end
  self.sprite.PlayAnimation(newAnimation)
  if love.keyboard.isDown("up") == false and self.bJumpReady == false then
    self.bJumpReady = true
  end
-- Sprite falling
  if self.sprite.standing == false then
    self.sprite.vy = self.sprite.vy + 500 * dt
  end
  -- Move
  self.sprite.x = self.sprite.x + self.sprite.vx * dt
  self.sprite.y = self.sprite.y + self.sprite.vy * dt

  updateSprite(self.sprite,dt)
end

return pixela