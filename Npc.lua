require("Sprite")

graph = {}

--fonction d'initialisation
function CreateNPC(width,height)

  id = 0
  for line in love.filesystem.lines("SpritesTabs/ghost.txt") do 
    if string.sub(line,1,1)=="$" then
      id = id+1
      graph[id] = {}
    else
      graph[id][#graph[id] + 1] = line
    end
  end
  
  sprite = CreateSprite("player",0,17*TILESIZE - (#graph[1][1])*2,(#graph[1][1])*2,#graph[1]*2)
  sprite.AddAnimation("idle", {graph[1]})
  sprite.AddAnimation("move", {graph[1],graph[2],graph[3],graph[1],
    graph[2],graph[3]})
  sprite.PlayAnimation("idle")
end

function updateNPC(dt)
  updateSprite(sprite, dt)
end