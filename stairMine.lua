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
  turtle.DigUp()
  turtle.Up()
  turtle.DigUp()
  turtle.Down()
  turtle.dDigDown()
  turtle.Down()
  turtle.Dig()
  turtle.Forward()
end
