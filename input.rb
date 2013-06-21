require_relative '/app/models/list.rb'
require_relative '/app/models/task.rb'


case ARGV[0]
when "list"
  list_view.list
end