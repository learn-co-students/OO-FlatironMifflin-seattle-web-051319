require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
jim = Manager.new("Jim", "Human Resources", 35)
pam = Employee.new("Pam", 450000, "Jim")
angela = Employee.new("Angela", 450001, "Jim")

 jim.hire_employee("Andy", 30000)


puts pam.tax_bracket