--copyright Vishwesh Anand MMXV
--builds a pyramid out of either stair blocks or regular blocks

io.write("Please enter desired pyramid length: ")
baselength = tonumber(io.read()) --odd numbers are preferable
while baselength>4 do --turtle doesn't build top of pyramid yet
  for n=1, 4, 1 do
    for x=1, baselength, 1 do
      turtle.placeDown()
      turtle.turnLeft()
      turtle.forward()
      turtle.turnRight()
    end
    turtle.up()
    turtle.turnLeft()
    turtle.forward()
    turtle.turnRight()
    turtle.forward()
    baselength = baselength - 1
  end
end
