class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.integer :resto_id
      t.integer :attendee_id

      t.timestamps
    end
  end
end
