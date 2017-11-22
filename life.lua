life = 5

largeur = love.graphics.getWidth()
hauteur = love.graphics.getHeight()

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
  for n=1,#graph do
    for i=1,#graph[n] do
      if graph[n][i] == 1 then
        love.graphics.rectangle("fill",0 + (i-1)*2,hauteur-32+(n-1)*2,2,2) 
      else
        love.graphics.setColor(0,0,0)
        love.graphics.rectangle("fill",0 + (i-1)*2,hauteur-32+(n-1)*2,2,2) 
        love.graphics.setColor(255,255,255)
      end
    end
  end
end