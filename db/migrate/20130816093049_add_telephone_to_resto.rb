class AddTelephoneToResto < ActiveRecord::Migration
  def change
    add_column :restos, :phone, :string
  end
end
