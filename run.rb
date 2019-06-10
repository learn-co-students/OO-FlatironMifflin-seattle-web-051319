require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
jim = Manager.new("Jim", "Human Resources", 35)
pam = Employee.new("Pam", 450000, "Jim")
angela = Employee.new("Angela", 450001, "Jim")

 jim.hire_employee("Andy", 30000)

# puts Employee.find_by_department("Human Resources")
puts pam.tax_bracket
# puts pam.object_id
# puts
# puts Employee:0x00007fc6cb0cb928.object_id
# puts Manager.all_departments
# puts Manager.average_age
# puts Employee.paid_over(0)
# binding.pry
# puts "done"
