class CreateTeaCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :tea_customers do |t|
      t.references :tea, foreign_key: true
      t.references :customer, foreign_key: true
      t.string :title 
      t.float :price 
      t.string :status, default: "Inactive"
      t.string :frequency
    end
  end
end
