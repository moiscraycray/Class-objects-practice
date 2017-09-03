class Employee

  attr_reader :name, :salary #getter

  def name=(name) #setter
    if name == ""
      raise "Name can't be blank!"
    end
    @name = name
  end

  def salary=(salary) #setter
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
  end

  def initialize(name = "Anonymous", salary = 0.0)
    self.name = name # name = is the same as calling name=
    self.salary = salary # same principle as above. self points to the object/instance (amy) itself
    # have to use 'self' because there'll be an error if we do amy.name = name
    # amy is not in scope
    # Ruby definitely knows 'self.name=name' is a call to the 'name=' method
  end

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = format("%.2f", @salary / 365.0 * 14)
    puts "Pay This Period: $#{pay_for_period}"
  end

end

amy = Employee.new("Amy Blake", 50_000) #Try invalid arguments to test the methods name= and salary=
amy.print_pay_stub
