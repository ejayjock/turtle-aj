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


end

turnRight=true
for j=1,10 do
  for i=1,10 do
    clearUp()
    clear()
    turtle.digDown()
    turtle.forward()
  end

  if turnRight then
    turtle.turnRight()
  else
    turtle.turnLeft()
  end
  
  clearUp()
  clear()
  turtle.digDown()
  turtle.forward()

  if turnRight then
    turtle.turnRight()
    turnRight=false
  else
    turtle.turnLeft()
    turnRight=true
  end
end
