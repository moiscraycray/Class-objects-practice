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
    @name = name
    @salary = salary
  end

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = format("%.2f", @salary / 365.0 * 14)
    puts "Pay This Period: $#{pay_for_period}"
  end

end

Employee.new("Jane Doe", 50_000).print_pay_stub
Employee.new("Jane Doe").print_pay_stub
Employee.new.print_pay_stub
