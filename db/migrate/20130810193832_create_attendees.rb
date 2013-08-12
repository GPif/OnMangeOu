class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.integer :lunch_id

      t.timestamps
    end
  end
end
