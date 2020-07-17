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

for i=1,5 do
  --turtle.digUp  or the big while Loop

  turtle.up()
  turtle.down()
  turtle.digDown()
  turtle.down()
  turtle.forward()
end
