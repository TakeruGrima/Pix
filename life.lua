require("map")

life = 5

largeur = love.graphics.getWidth()
hauteur = love.graphics.getHeight()

position = {}

graph = {
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,1,1,1,0,1,1,1,0,0,0,0,0},
  {0,0,0,1,0,0,0,1,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0},
  {0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0},
  {0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0},
  {0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
}

function removeLife()
  life = life -1
end

function addLife()
  life = life + 1
end

function drawLife()
  position.x = 0
  position.y = hauteur-TILESIZE
  for heart = 1, life do
    for n=1,#graph do
      for i=1,#graph[n] do
        if graph[n][i] == 1 then
          love.graphics.rectangle("fill",position.x + (i-1)*2,position.y+(n-1)*2,2,2) 
        end
      end
    end
    position.x = position.x + TILESIZE/2 +4
  end
end