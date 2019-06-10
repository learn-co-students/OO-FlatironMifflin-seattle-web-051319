require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

steve = Manager.new("Steve")
steve.age = 35
steve.department = "Web"

david = Manager.new("David")
david.age = 30
david.department = "Data Science"

aliya = Employee.new("Aliya")
rj = Employee.new("RJ")
daneil = Employee.new("DaNeil")

aliya.salary = 30000
aliya.department = "Web"
aliya.manager = steve

rj.salary = 31000
rj.department = "Web"
rj.manager = steve

daneil.salary = 35000
daneil.department = "Data Science"
daneil.manager = david

david.hire_employee("Austin", 29000)

puts "MANAGER"
puts "Steve name: #{steve.name}"
puts "Steve age: #{steve.age}"
puts "Steve department: #{steve.department}"
puts " "
puts "all managers: #{Manager.all}"
puts " "
puts "Steve employees: #{steve.employees}"
puts " "
puts "David employees: #{david.employees}"
puts " "
puts "all manager departments: #{Manager.all_departments}"
puts "manager average age: #{Manager.average_age}"
puts " "
puts "EMPLOYEE"
puts "RJ name: #{rj.name}"
puts "RJ salary: #{rj.salary}"
puts "RJ manager: #{rj.manager_name}"
puts "RJ department: #{rj.department}"
puts " "
puts "RJ tax bracket: #{rj.tax_bracket}"
puts " "
puts "all employees: #{Employee.all}"
puts " "
puts "employees paid over 30000: #{Employee.paid_over(30000)}"
puts " "
puts "employee find by manager in Web: #{Employee.find_by_department("Web").name}"
puts "employee find by manager in Data Science: #{Employee.find_by_department("Data Science").name}"

binding.pry
puts "done"
