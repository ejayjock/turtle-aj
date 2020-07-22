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

for j=1,10 do
 for i=1,10 do
 clearUp()
 clear()
 turtle.digDown()
 turtle.forward()
 end
turtle.right()
clearUp()
clear()
turtle.digDown()
turtle.forward()
turtle.right
