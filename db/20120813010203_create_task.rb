require_relative '../config'

class CreateTask < ActiveRecord::Migration

  def change
    create_table :tasks do |t|
      t.string :task
      t.boolean :completed, default: false
  end

end

