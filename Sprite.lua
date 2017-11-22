require("map")
lstSprites = {}

-- Globals
local bJumpReady
flip = false

function CreateSprite(pType, pX, pY,width,height)
  mySprite = {}

  mySprite.x = pX
  mySprite.y = pY
  mySprite.w = width
  mySprite.h = height
  mySprite.vx = 0
  mySprite.vy = 0
  mySprite.type = pType
  mySprite.frame = 0
  mySprite.standing = false

  mySprite.currentAnimation = ""
  mySprite.frame = 0
  mySprite.animationSpeed = 1/8
  mySprite.animationTimer = mySprite.animationSpeed
  mySprite.animations = {}

  mySprite.AddAnimation = function(psName, plstGraphs)
    mySprite.animations[psName] = plstGraphs
  end

  mySprite.PlayAnimation = function(psName)
    if mySprite.currentAnimation ~= psName then
      mySprite.currentAnimation = psName
      mySprite.frame = 1
    end
  end

  return mySprite
end

function updateSprite(pSprite, dt)
  -- Animation
  if pSprite.currentAnimation ~= "" then
    pSprite.animationTimer = pSprite.animationTimer - dt
    if pSprite.animationTimer <= 0 then
      pSprite.frame = pSprite.frame + 1
      pSprite.animationTimer = pSprite.animationSpeed
      if pSprite.frame > #pSprite.animations[pSprite.currentAnimation] then
        pSprite.frame = 1
      end
    end
  end
  
  -- Locals for Collisions
  local oldX = pSprite.x
  local oldY = pSprite.y

  -- Specific behavior for the player
  --if pSprite.type == "player" then
   -- updatePlayer(pSprite, dt)
 -- end

  -- Collision detection
  local collide = false
  -- On the right
  if pSprite.vx > 0 then
    collide = CollideRight(pSprite)
  end
  -- On the left
  if pSprite.vx < 0 then
    collide = CollideLeft(pSprite)
  end
  -- Stop!
  if collide then
    pSprite.vx = 0
    local col = math.floor((pSprite.x + TILESIZE/2) / TILESIZE) + 1
    pSprite.x = (col-1)*TILESIZE
  end
  collide = false
  -- Above
  if pSprite.vy < 0 then
    collide = CollideAbove(pSprite)
    if collide then
      pSprite.vy = 0
      local lig = math.floor((pSprite.y + TILESIZE/2) / TILESIZE) + 1
      pSprite.y = (lig-1)*TILESIZE
    end
  end
  collide = false
  -- Below
  if pSprite.standing or pSprite.vy > 0 then
    collide = CollideBelow(pSprite)
    if collide then
      pSprite.standing = true
      pSprite.vy = 0
      local lig = math.floor((pSprite.y + TILESIZE/2) / TILESIZE) + 1
      pSprite.y = (lig-1)*TILESIZE - (pSprite.h-TILESIZE)
    else
      pSprite.standing = false
    end
  end
  -- Sprite falling
  if pSprite.standing == false then
    pSprite.vy = pSprite.vy + 500 * dt
  end
end


function drawSprite(pSprite)
  nbCol = #pSprite.animations[pSprite.currentAnimation]
  currentanim = pSprite.animations[pSprite.currentAnimation][pSprite.frame]
  for n=1,#currentanim do
    if pSprite.flip == false then
      for i=1,#currentanim[n] do
        if currentanim[n][i] == 1 then
          love.graphics.rectangle("fill",pSprite.x+ (i-1)*2,pSprite.y+ (n)*2,2,2) 
        else
          love.graphics.setColor(0,0,0)
          love.graphics.rectangle("fill",pSprite.x+ (i-1)*2,pSprite.y+ (n)*2,2,2) 
          love.graphics.setColor(255,255,255)
        end
      end
    else
      for i=#currentanim[n],1,-1 do
        if currentanim[n][i] == 1 then
          love.graphics.rectangle("fill",pSprite.x+ (#currentanim[n]*2-(i)*2),pSprite.y+ (n)*2,2,2) 
        else
          love.graphics.setColor(0,0,0)
          love.graphics.rectangle("fill",pSprite.x+ (#currentanim[n]*2-(i)*2),pSprite.y+ (n)*2,2,2) 
          love.graphics.setColor(255,255,255)
        end
      end
    end
  end
end