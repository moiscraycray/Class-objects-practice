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

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365) * 14 #fornight pay
    puts "Pay This Period: $#{pay_for_period}"
  end

end

amy = Employee.new
amy.name = "Amy Blake"
amy.salary = 50_000
amy.print_pay_stub
