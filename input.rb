require_relative './app/models/list'
require_relative './app/models/task'


case ARGV[0]
when "list"
  puts "Listing All Tasks"
  puts Task.all
when "add"
  Task.create!(description: ARGV[1..-1].join(' '))
when "remove" || "delete"
  Task.delete(ARGV[1])
  puts "Removed task at index #{ARGV[1]}."
when "bobby_tables"
  puts "drop the table"
end
