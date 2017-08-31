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
  def talk(name)
    puts "#{name} says Bark!"
  end
  def move(name, destination)
    puts "#{name} runs to the #{destination}."
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

dog = Dog.new
dog_name = "Lucy"
cat = Cat.new
cat_name = "Fluffy"

dog.talk(dog_name)
dog.move(dog_name, "fence")
cat.talk(cat_name)
cat.move(cat_name, "litter box")
