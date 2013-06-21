require_relative '../../config/application'

class Task < ActiveRecord::Base
  has_one :list

  def self.mark_completed index
    x = Task.find(index)
    x.update_attributes(completed: "[X]")
  end

  def self.display(index)
    x = Task.find(index)
    x.description
  end



end

