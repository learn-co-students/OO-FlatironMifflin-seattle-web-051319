class Manager
    attr_reader :employees
    attr_accessor :name, :dept, :age

    @@all = []

    def initialize(name, dept, age)
        @name = name
        @dept = dept
        @age = age
        @employees = []

        @@all << self
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        employee = Employee.new(name, salary, self)
        @employees << employee
    end

    def self.all_departments
        # returns array of all dept names of all managers
        @@all.collect {|manager| manager.dept}
    end

    def self.average_age
        # returns average age of all managers
        # Return Float
        age_sum = @@all.sum {|manager| manager.age}
        num_of_managers = @@all.length
        age_sum/num_of_managers.to_f
    end
end

