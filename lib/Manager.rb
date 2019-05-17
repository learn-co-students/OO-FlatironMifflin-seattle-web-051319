class Manager

  attr_reader :name, :department, :age, :employees

  @@managers = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @employees = []
    @@managers << self
  end

  def self.all
    @@managers
  end

  def hire_employees(name, salary)
    new_hire = Employee.new(name, salary)
    @employees << new_hire
  end

  def self.all_departments
    self.all.map{|info| info}
  end

end
