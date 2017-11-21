require("map")
require("Colision")
require("Sprite")
require("Player")

io.stdout:setvbuf('no')
--if arg[#arg] == "-debug" then require("mobdebug").start() end

-- Images loading
local imgTiles = {}
imgTiles["1"] = love.graphics.newImage("tile1.png")
imgPlayer = love.graphics.newImage("alien.png")

-- Map and levels
local level = {}
local pixela = require("Player")

function ChargeNiveau(pNum)
  if pNum == 1 then
  
    level = {}
    level.playerStart = {}
    level.playerStart.col = 1
    level.playerStart.lig = 17
  elseif pNum == 2 then
    map[1]  = "1111111111111111111111111"
    map[2]  = "1000000000000000000000001"
    map[3]  = "1000000000000000000000001"
    map[4]  = "1000000000000000000000001"
    map[5]  = "1000000000000000000000001"
    map[6]  = "1000000000000000000000001"
    map[7]  = "1000000000000000000000001"
    map[8]  = "1000000000000000000000001"
    map[9]  = "1000000000000000000000001"
    map[10] = "1000000000000000000000001"
    map[11] = "1000000000000000000000001"
    map[12] = "1000000000000000000000001"
    map[13] = "1000000000000000000000001"
    map[14] = "1000000000000000000000001"
    map[15] = "1000000000000000000000001"
    map[16] = "1000000000000000000000001"
    map[17] = "1000000000000000000000001"
    map[18] = "1111111111111111111111111"
  end
end

function InitGame(pNiveau)
  lstSprites = {}
  ChargeNiveau(pNiveau)
  --CreateSprite("player", (level.playerStart.col-1) * 32, (level.playerStart.lig-1) * 32)
  bJumpReady = true
end

function love.load()
  largeur = love.graphics.getWidth()
  hauteur = love.graphics.getHeight()
  love.window.setTitle("Mini platformer (c) Gamecodeur 2017")
  pixela:init(largeur,hauteur)
  InitGame(1)
end

function love.update(dt)
  pixela:update(dt)
end

function love.draw()
  Mapdraw()
  pixela:draw()
end  