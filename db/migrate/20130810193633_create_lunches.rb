class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
      t.date :date

      t.timestamps
    end
  end
end
