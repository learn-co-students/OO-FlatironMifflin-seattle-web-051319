class Employee
	attr_accessor :salary, :department, :manager
	attr_reader :name
	
	@@all = []
	
	def initialize(name)
		@name = name
		@@all.push(self)
	end
	
	def self.all
		@@all
	end
	
	def tax_bracket
		target = self.salary
		employees = []
		Employee.all.each do |employee|
			if employee.salary >= target - 1000 && employee.salary <= target + 1000 && employee != self
				employees.push(employee)
			end
		end
		employees
	end
	
	def manager_name
		self.manager.name
	end
	
	def self.paid_over(amount)
		Employee.all.select {|employee| employee.salary > amount}
	end
	
	def self.find_by_department(department)
		manager = Manager.all.find {|manager| manager.department == department}
		Employee.all.find {|employee| employee.manager == manager}
	end
end
