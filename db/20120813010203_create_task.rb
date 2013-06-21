require_relative '../application'

class CreateTask < ActiveRecord::Migration

  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :completed, default: false
  end

end

