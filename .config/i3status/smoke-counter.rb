require 'date'

start_date = Date.parse("29.03.2020")
end_date = Date.parse(Time.now.strftime("%d.%m.%Y"))

delta = end_date - start_date

puts "No smoke #{delta.to_i} days "
