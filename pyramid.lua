--copyright Vishwesh Anand MMXV
--builds a pyramid out of either stair blocks or regular blocks

turtle.select(1)

function tryForward()
  while not turtle.forward() do
    turtle.dig()
    sleep(0.5)
  end
end

io.write("Please enter desired pyramid length: ")
baselength = tonumber(io.read()) --odd numbers are preferable
while baselength>4 do --turtle doesn't build top of pyramid yet
  for n=1, 4, 1 do
    for x=1, baselength, 1 do
      turtle.placeDown()
      turtle.turnLeft()
      tryForward()
      turtle.turnRight()
    end
    turtle.up()
    turtle.turnLeft()
    tryForward()
    turtle.turnRight()
    tryForward()
    baselength = baselength - 2
  end
end
