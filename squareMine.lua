function nocobblestone()
  cob="minecraft:cobblestone"
  local item
  for i=1,16 do
      item=turtle.getItemDetail(i)
      if not turtle.getItemCount(i)==0 then
        if item.name==cob then
          turtle.select(i)
          turtle.drop()
        end
      end
  end
end

function clearUp()
  cont=true
  while cont do
    if turtle.detectUp() then
      turtle.digUp()
    else
      cont=false
    end
  end
end

function clear()
  cont=true
  while cont do
    if turtle.detect() then
      turtle.dig()
    else
      cont=false
    end
  end
end

function isodd(numb)
  -- Will return true if numb is odd, and false if it is even.
  tst=math.fmod(numb,2)
  if tst==1 then
    return true
  else
    return false
  end
end

for j=1,10 do
  for i=1,10 do
    clearUp()
    clear()
    turtle.digDown()
    turtle.forward()
  end

  if isodd(j) then
    turtle.turnRight()
  else
    turtle.turnLeft()
  end

  clearUp()
  clear()
  turtle.digDown()
  turtle.forward()
  nocobblestone()

  if isodd(j) then
    turtle.turnRight()
  else
    turtle.turnLeft()
  end

end
