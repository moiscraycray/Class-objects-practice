# This app is for practicing Ruby classes and objects.

class Dog

  def talk
    puts "Bark!"
  end

  def move(destination)
    puts "Running to the #{destination}."
  end

end

fido = Dog.new
rex = Dog.new

fido.talk
rex.move("food bowl")
