require_relative '../models/list'
require_relative '../models/task'
require 'rake'



case ARGV[0]

when "list"
  puts "Listing All Tasks"
  Task.all.each { |hello| puts "#{hello.id}. #{hello.description}\nCompleted? #{hello.completed}" }
when "add"
  Task.create!(description: ARGV[1..-1].join(' '))
when "remove" || "delete"
  Task.delete(ARGV[1])
  puts "Removed task at index #{ARGV[1]}."
when "bobby_tables"
    rm_f DB_PATH
when "complete"
  Task.mark_completed(ARGV[1])
  puts "Completed the task: #{Task.display(ARGV[1])}" 
end

