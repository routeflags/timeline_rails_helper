# frozen_string_literal: true

class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.date :start_on, null: false
      t.text :note
      t.timestamps
    end
  end
end
