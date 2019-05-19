require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


jenny = Manager.new("Jenny", "Evil", 32)
aidi = Manager.new("Aidi", "Purgatory", 26)

# jenny hires employees and pays salary in bananas
jenny.hire_employee("Fabian", 100000)
jenny.hire_employee("Noah", 250000)
jenny.hire_employee("Austin", 80000)
jenny.hire_employee("Aliyah", 80500)
jenny.hire_employee("David", 79800)

chris = Employee.new("Christopher", 80200, jenny)

puts chris.tax_bracket
# aidi hires a minion and pays salary in melons
aidi.hire_employee("Chet", 500)



# puts Employee.paid_over(500)
# binding.pry
puts "done"
