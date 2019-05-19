class Employee
    attr_reader :name, :salary
    attr_accessor :manager
    @@all = []
    
    def initialize(name, salary, manager)
      @name = name
      @salary = salary
      @manager = manager
      @@all << self
    end
    
    def self.all
      @@all
    end
    
    def manager_name
      @manager.name
    end
    
    def self.paid_over(num)
      # binding.pry
      self.all.select do |employee|
        employee.salary > num
        # binding.pry
      end
    end
    
    def self.find_by_department(department_name)
      # binding.pry
      manager_of_department = Manager.all.find do |manager|
        manager.department == department_name
        # manager.employees[0]
      end
      manager_of_department.employees.first
    end
    
    def tax_bracket
      people = @@all.select do |employee|
        salary_diff = (self.salary - employee.salary).abs
        salary_diff <= 1000
        # binding.pry
      end
      # binding.pry
      people.each do |person|
        puts person.name
      end
      end
      # binding.pry
    end
