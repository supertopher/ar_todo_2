require_relative '../../config/application'

class CreateTask < ActiveRecord::Migration

  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :completed, default: false
      t.integer :list_id
    end
  end

end

