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

-- Ask how deep the mine shoud be
print("How deep?")
nDeeep=tonumber(io.read())

print("Which Slot has filler material?")
nSlot=tonumber(io.read())

for i=1,nDeeep do
  clearUp()
  turtle.up()
  clearUp()
  turtle.down()
  turtle.digDown()
  turtle.down()
  if not turtle.detectDown()  then
    turtle.select(nSlot)
    turtle.placeDown()
  end
  clear()
  turtle.forward()
end
