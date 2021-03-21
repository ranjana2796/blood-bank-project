class AddBloodbankIdToDonor < ActiveRecord::Migration[6.1]
  def change
    add_column :donors, :bloodbank_id, :integer
  end
end
