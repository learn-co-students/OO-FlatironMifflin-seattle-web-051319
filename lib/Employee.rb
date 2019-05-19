require "pry"
class Employee
    attr_accessor :name, :salary, :manager

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

    def self.paid_over(num)
        # return array of all employees with salaries over num
        employees = @@all.select {|employee| employee.salary > num}
        employees.collect {|employee| employee.name}
    end

    def self.find_by_department(dept)
        manager_of_dept = Manager.all.find {|manager| manager.dept == dept}
        manager_of_dept.employees.first
        # returns FIRST employee whose manager works in dept
        # HINT: .find
    end

    def tax_bracket
        # returns array of all employees whose salaries are less than +-1000 of employee who calls method
        people = @@all.select do |employee| 
            salary_dif = (employee.salary - self.salary).abs
            salary_dif <= 1000
        end
        people.each {|person| puts person.name}
    end

end
