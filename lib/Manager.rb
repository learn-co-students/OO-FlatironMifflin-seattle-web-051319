# require 'pry'

class Manager
attr_reader :name, :department, :age, :employees
@@all = []

def initialize(name, department, age)
  @name = name
  @department = department
  @age = age
  @employees = []
  @@all << self
end

def self.all
  @@all
end

def hire_employee(name, salary)
  new_employee = Employee.new(name, salary, self)
  # new_employee.manager == self
  @employees << new_employee
end

def self.all_departments
  @@all.collect do |manager|
    manager.department
  end
end

def self.average_age
  # self.average(manager.age)
  all_ages = @@all.collect do |manager|
    manager.age
  end
  number_of_managers = @@all.size
  # binding.pry
  all_ages.sum/number_of_managers.to_f
end

end
