require_relative '../../config/application'

class Task < ActiveRecord::Base
  has_one :list

  def mark_completed
    
  end
end

Task.create(description: "Give two doses of happy powder to Chris")
Task.create(description: "Make that five doses of happy powder to Chris")
Task.delete(3)
