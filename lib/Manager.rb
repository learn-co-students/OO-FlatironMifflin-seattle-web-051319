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
    new_hire.manager = self
    @employees << new_hire
  end

  def self.all_departments
    self.all.map{|manager| manager.department}
  end

  def self.average_age
    total_age = "0".to_f
    self.all.each {|manager| total_age +=manager.age}
    avg_age = total_age/self.all.count
  end

end
