TILESIZE = 32

map = {}

map[1]  = "0000000000000000000000000"
map[2]  = "0000000000000000000000000"
map[3]  = "0000111111111111111100000"
map[4]  = "0000000000000000000010011"
map[5]  = "0000000000000000000000000"
map[6]  = "0000000000000000000000111"
map[7]  = "0000000000000000000000000"
map[8]  = "0000000000000000011111111"
map[9]  = "0000000000000100000000000"
map[10] = "0000000000000001000000000"
map[11] = "0000000000111100000000000"
map[12] = "0000000000000000000000000"
map[13] = "1111111000000000000000000"
map[14] = "0000000000000000000000000"
map[15] = "1100000000111100000000000"
map[16] = "0000000001000010000000000"
map[17] = "0000000010000001000000000"
map[18] = "1111111111111111111111111"

function getTileAt(pX, pY)
  local col = math.floor(pX / TILESIZE) +1
  local lig = math.floor(pY / TILESIZE) +1
  
  if col>0 and col<=#map[1] and lig>0 and lig<=#map then
    local id = string.sub(map[lig],col,col)
    return id
  end
  return 0
end

function getCol(pX)
  return math.floor(pX / TILESIZE) +1
  end


function getLig(pY)
  return math.floor(pY / TILESIZE) +1
  end

function isSolid(pID)
  if pID == "0" then return false end
  if pID == "1" then return true end
  return false
end

function Mapdraw()
  for l=1,#map do
    for c=1,#map[1] do
      local char = string.sub(map[l],c,c)
      if tonumber(char) > 0 then
        for pixel=0,15 do
          love.graphics.rectangle("fill",(c-1)*TILESIZE + pixel*2,(l-1)*TILESIZE,2,2)
        end
      end
    end
  end
end