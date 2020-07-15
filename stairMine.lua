--[[ Code to be repeated to create a staircase mine
Series of turtle commands:
  - Dig Up
  - Move Up
  - Dig Up
  - Move down
  - dig down
  - move down
  - dig Forward
  - move forward ]]


for i=1,10 do
  cont=true
  while cont do
    if turtle.detectUp() then
      turtle.digUp()
    else
      cont=false
    end
  end
    cont=true
  while cont do
   if turtle.detectUp() then
     turtle.digUp()
   else
      cont=false
    end
  end

  --turtle.digUp()
  turtle.up()
  turtle.down()
  turtle.digDown()
  turtle.down()

  cont=true
  while cont do
   if turtle.detect() then
    turtle.dig()
  else
    cont=false
  end
 end
  --turtle.dig()
  turtle.forward()
end
