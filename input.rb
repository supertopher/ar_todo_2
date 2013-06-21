require_relative '/app/models/list.rb'
require_relative '/app/models/task.rb'


case ARGV[0]
when "list"
  puts Task.all
when "add"
  Task.create!(description: ARGV[1..-1])
when "remove" || "delete"
  Task.delete(ARGV[1])
  puts "Removed task at index #{ARGV[1]}."
when "bobby_tables"
  puts "drop the table"
end