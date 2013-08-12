class CreateRestos < ActiveRecord::Migration
  def change
    create_table :restos do |t|
      t.string :name

      t.timestamps
    end
  end
end
