class CreateDonors < ActiveRecord::Migration[6.1]
  def change
    create_table :donors do |t|
      t.string :name
      t.string :bloodgroup
      t.date :dateofbirth
      t.text :location
      t.integer :contact
      t.string :email
      
      t.timestamps
    end
  end
end
