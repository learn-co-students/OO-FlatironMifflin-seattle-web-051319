class Manager
	attr_accessor :age, :department
	attr_reader :name
	
	@@all = []
	
	def initialize(name)
		@name = name
		@@all.push(self)
	end
	
	def self.all
		@@all
	end
	
	def self.all_departments
		self.all.map {|manager| manager.department}
	end
	
	def self.average_age
		total = 0.0
		self.all.each {|manager| total += manager.age}
		(total / Manager.all.size).round(1)
	end
	
	def employees
		Employee.all.select {|employee| employee.manager == self}
	end
	
	def hire_employee(name, salary)
		x = Employee.new(name)
		x.salary = salary
		x.manager = self
		x.department = self.department
		self.employees
	end
end
