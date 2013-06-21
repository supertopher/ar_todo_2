require_relative '../../config/application'

class ChangeColumn < ActiveRecord::Migration

  # def change
      change_column(:tasks, :completed, :string, default: "[ ]" ) 
  # end

end
