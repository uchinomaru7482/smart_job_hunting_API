class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.integer :progress, null: false, default: 0
      t.text :motivation
      t.text :remarks

      t.timestamps
    end
  end
end
