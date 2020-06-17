class Employee

  attr_reader :name, :salary
  attr_accessor :manager

  @@employees = []

  def initialize(name, salary)
    @name = name
    @salary = salary
    @@employees << self
  end

  def manager_name
    @manager.name
  end

  def self.all
    @@employees
  end

  def self.paid_over(num)
    self.all.select {|employee| employee.salary > num}
  end

  def self.find_by_department(department)
    self.all.find {|employee| employee.manager.department == department}
  end

  def tax_bracket
    self.class.all.select do |employee|
      employee.salary < self.salary + 1000 &&
      employee.salary > self.salary - 1000 &&
      employee =! self
    end
  end

end
