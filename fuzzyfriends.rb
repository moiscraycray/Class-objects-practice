# This app is for practicing Ruby classes and objects.

class Bird
  def talk(name)
    puts "#{name} says Chirp! Chirp!"
  end

  def move(name, destination)
    puts "#{name} flies to the #{destination}."
  end
end

class Dog
  def name=(new_value)
    @name = new_value
  end

  def name
    @name
  end

  def age=(new_value)
    @age = new_value
  end

  def age
    @age
  end

  def report_age
    puts "#{name} is #{@age} years old."
  end

end

class Cat
  def talk(name)
    puts "#{name} says Meow!"
  end

  def move(name, destination)
    puts "#{name} runs to the #{destination}."
  end
end

fido = Dog.new
fido.name = "Fido"
fido.age = 2
rex = Dog.new
rex.name = "Rex"
rex.age = 3
fido.report_age
rex.report_age
