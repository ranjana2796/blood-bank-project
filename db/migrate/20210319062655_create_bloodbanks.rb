class CreateBloodbanks < ActiveRecord::Migration[6.1]
  def change
    create_table :bloodbanks do |t|
      t.string :name
      t.text :address
      t.string :category
      t.text :availability

      t.timestamps
    end
  end
end
