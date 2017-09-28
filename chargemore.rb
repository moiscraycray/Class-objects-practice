class Employee

  attr_reader :name #getter

  # validation: the following ensures valid arguments are given
  def name=(name) #setter
    if name == ""
      raise "Name can't be blank!"
    end
    @name = name
  end
  # end validation

  def print_name
    puts "Name: #{self.name}" # self.name is the same as name; it works if 'self' is omitted
  end

end

class SalariedEmployee < Employee

  attr_reader :name, :salary

  def initialize(name = "Anonymous", salary = 0.0) # Here, we are making parameters optional by providing defaults
    self.name = name # name = is the same as calling name=
    self.salary = salary # same principle as above. self points to the object/instance (amy) itself
    # we have to use 'self' because there'll be an error if we do amy.name = name
    # also, amy (instance) is not in scope so we use 'self' to refer to the class itself
    # Ruby definitely knows 'self.name=name' is a call to the 'name=' method. This enables validation
  end

  # validation: the following ensures valid arguments are given
  def salary=(salary) #setter
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
  end

  def print_pay_stub
    print_name # This calls print_name method inherited from superclass Employee
    pay_for_period = (self.salary / 365.0 * 14)
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay This Period: $#{formatted_pay}"
  end

end

class HourlyEmployee < Employee

  def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
    self.name = name
    self.hourly_wage = hourly_wage
    @hours_per_week = hours_per_week # here we used an instance variable instead of 'self'. It does the same thing since 'self' is optional provided the '@' is used
  end
  # This is the same as the previous initialize method

  attr_reader :hourly_wage, :hours_per_week

  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "An hourly wage of $#{hourly_wage} isn't valid!"
    end
    @hourly_wage = hourly_wage
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "#{hours_per_week} hours isn't valid!"
    end
    @hours_per_week = hours_per_week
  end

  def print_pay_stub
    print_name # This calls print_name method inherited from superclass Employee
    pay_for_period = (hourly_wage * hours_per_week * 2)
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay This Period: $#{formatted_pay}"
  end

end

amy = SalariedEmployee.new("Amy Blake", 50_000) #Try invalid arguments to test the methods name= and salary=
amy.print_pay_stub

olivia = HourlyEmployee.new("Olivia Mo", 23, 50)
olivia.print_pay_stub
