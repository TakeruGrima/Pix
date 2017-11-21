require("sprite")
--object pixela
local pixela = {}
--variables
--contient les matrices du personnage
pixela.graph = {}

--idle
pixela.graph[0] = {
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,1,1,1,1,1,0,0,0},
  {0,0,0,0,1,1,0,0,0,0,0,1,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,0,1,0},
  {0,0,1,0,0,0,0,1,0,0,0,0,1,0},
  {0,0,1,0,0,0,0,0,1,1,1,1,0,0},
  {0,0,1,0,0,0,0,0,0,0,1,0,0,0},
  {0,0,0,1,0,0,0,1,1,1,1,0,0,0},
  {0,0,0,0,1,0,0,0,0,1,0,0,0,0},
  {0,0,0,0,1,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,1,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,1,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,1,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,1,0,0,0},
  {0,1,0,0,0,0,0,0,0,0,1,0,0,0},
  {0,1,0,0,0,0,0,0,0,0,1,0,0,0},
  {0,1,0,0,0,0,0,0,0,0,1,0,0,0},
  {0,0,1,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,1,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,1,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,1,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,1,0,0,0},
  {1,1,1,0,0,0,0,0,0,0,0,1,1,1}
}
--walk1
pixela.graph[1] ={
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,1,1,1,1,1,0,0,0},
  {0,0,0,0,1,1,0,0,0,0,0,1,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,0,1,0},
  {0,0,1,0,0,0,0,1,0,0,0,0,1,0},
  {0,0,1,0,0,0,0,0,1,1,1,1,0,0},
  {0,0,1,0,0,0,0,0,0,0,1,0,0,0},
  {0,0,0,1,0,0,0,1,1,1,1,0,0,0},
  {0,0,0,0,1,0,0,0,0,1,0,0,0,0},
  {0,0,0,0,1,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,1,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,1,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,1,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,1,0,0,0},
  {0,1,0,0,0,0,0,0,0,0,1,0,0,0},
  {0,1,0,0,0,0,0,0,0,0,1,0,0,0},
  {0,1,0,0,0,0,0,0,0,0,1,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,1,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,1,0},
  {1,1,1,0,0,0,0,0,0,0,0,0,1,1}
}
--walk2
pixela.graph[2] = {
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,1,1,1,1,1,0,0,0},
  {0,0,0,0,1,1,0,0,0,0,0,1,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,0,1,0},
  {0,0,1,0,0,0,0,1,0,0,0,0,1,0},
  {0,0,1,0,0,0,0,0,1,1,1,1,0,0},
  {0,0,1,0,0,0,0,0,0,0,1,0,0,0},
  {0,0,0,1,0,0,0,1,1,1,1,0,0,0},
  {0,0,0,0,1,0,0,0,0,1,0,0,0,0},
  {0,0,0,0,1,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,1,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,1,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,1,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,1,0,0,0},
  {0,1,0,0,0,0,0,0,0,0,1,0,0,0},
  {0,1,0,0,0,0,0,0,0,0,1,0,0,0},
  {0,1,0,0,0,0,0,0,0,0,1,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,0,1,0},
  {0,0,1,0,0,0,0,0,0,0,0,0,1,0},
  {0,1,1,0,0,0,0,0,0,0,0,0,1,0},
  {0,1,0,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,0,0,1}
}
--walk3
pixela.graph[3] = {
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,1,1,1,1,1,0,0},
  {0,0,0,0,0,1,1,0,0,0,0,0,1,0},
  {0,0,0,0,1,0,0,0,0,0,0,0,0,1},
  {0,0,0,1,0,0,0,0,1,0,0,0,0,1},
  {0,0,0,1,0,0,0,0,0,1,1,1,1,0},
  {0,0,0,1,0,0,0,0,0,0,0,1,0,0},
  {0,0,0,0,1,0,0,0,1,1,1,1,0,0},
  {0,0,0,0,1,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,1,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,1,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,1,0,0,0},
  {0,1,0,0,0,0,0,0,0,0,1,0,0,0},
  {0,1,0,0,0,0,0,0,0,0,1,0,0,0},
  {0,1,0,0,0,0,0,0,0,0,1,0,0,0},
  {0,1,0,0,0,0,0,0,0,0,1,0,0,0},
  {0,0,1,0,0,0,0,0,0,0,0,1,0,0},
  {0,1,0,0,0,0,0,0,0,0,0,0,1,0},
  {1,1,0,0,0,0,0,0,0,0,0,0,1,0},
  {1,0,0,0,0,0,0,0,0,0,0,0,0,1},
  {1,0,0,0,0,0,0,0,0,0,0,0,0,1}
}

pixela.bJumpReady = true
pixela.jumpVelocity = -380

--fonction d'initialisation
function pixela:init(width,height)
  
  self.sprite = CreateSprite("player",0,13*16-24,28,48)
  self.sprite.AddAnimation("idle", {self.graph[0]})
  self.sprite.AddAnimation("saut", {self.graph[0]})
  self.sprite.AddAnimation("move", {self.graph[0],self.graph[1],self.graph[2],self.graph[3],
      self.graph[2],self.graph[1],self.graph[0]})
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
  local friction = 150
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