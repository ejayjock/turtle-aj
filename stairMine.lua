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


for i=1,5 do
  cont=true
  while cont do
 if turtle.detectUp()
turtle.digUp()
else
  cont=false
  --turtle.digup
  end
  end
  for i=1,5 do
    cont=true
    while cont do
   if turtle.detectUp()
    turtle.digUp()
  else
    cont=false
  --turtle.digUp()
  turtle.up()
  turtle.down()
  turtle.digDown()
  turtle.down()
  for i=1,5 do
    cont=true
    while cont do
   if turtle.detect()
    turtle.dig()
  else
    cont=false
  --turtle.dig()
  turtle.forward()
end
