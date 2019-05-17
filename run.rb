require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
e1 = Manager.new("Steve", "Housekeeping", 25)
puts Manager.all_departments


binding.pry
puts "done"
