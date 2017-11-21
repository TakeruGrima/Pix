require("map")

function CollideRight(pSprite)
  local idTete1 = getTileAt(pSprite.x + 32, pSprite.y + 3)
  local idTete2 = getTileAt(pSprite.x + 32, pSprite.y + 30)
  local id1 = getTileAt(pSprite.x + 32, pSprite.y +14+30)
  return isSolid(id1) or isSolid(idTete1) or isSolid(idTete2)
end

function CollideLeft(pSprite)
  local id1 = getTileAt(pSprite.x-1, pSprite.y + 3)
  local id2 = getTileAt(pSprite.x-1, pSprite.y + 30)
  return isSolid(id1) or isSolid(id2)
end

function CollideBelow(pSprite)
  local id1 = getTileAt(pSprite.x + 1, pSprite.y + 32+16)
  local id2 = getTileAt(pSprite.x + 30, pSprite.y + 32+16)
  return isSolid(id1) or isSolid(id2)
end

function CollideAbove(pSprite)
  local id1 = getTileAt(pSprite.x + 1, pSprite.y-1)
  local id2 = getTileAt(pSprite.x + 30, pSprite.y-1)
  return isSolid(id1) or isSolid(id2) 
end