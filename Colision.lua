require("map")

function CollideRight(pSprite)
  local id1 = getTileAt(pSprite.x + TILESIZE, pSprite.y + 3)
  local id2 = getTileAt(pSprite.x + TILESIZE, pSprite.y + TILESIZE - 2)
  if isSolid(id1) or isSolid(id2) then return true end
  return false
end

function CollideLeft(pSprite)
  local id1 = getTileAt(pSprite.x-1, pSprite.y + 3)
  local id2 = getTileAt(pSprite.x-1, pSprite.y + TILESIZE - 2)
  if isSolid(id1) or isSolid(id2) then return true end
  return false
end

function CollideBelow(pSprite)
  local id1 = getTileAt(pSprite.x + 1, pSprite.y + TILESIZE +16)
  local id2 = getTileAt(pSprite.x + TILESIZE - 2, pSprite.y + TILESIZE +16)
  if isSolid(id1) or isSolid(id2) then return true end
  return false
end

function CollideAbove(pSprite)
  local id1 = getTileAt(pSprite.x + 1, pSprite.y-1)
  local id2 = getTileAt(pSprite.x + TILESIZE - 2, pSprite.y-1)
  if isSolid(id1) or isSolid(id2) then return true end
  return false
end
