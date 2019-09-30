class CreateCustomer < ActiveRecord::Migration[5.2]

  def change
    create_table :customers do |t|
      t.string :name
      t.integer :flight_id
    end  
  end
end
