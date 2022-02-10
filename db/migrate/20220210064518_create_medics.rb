class CreateMedics < ActiveRecord::Migration[5.2]
  def change
    create_table :medics do |t|
      t.string :first_name
      t.string :last_name
      t.string :specialty
      t.string :zip_code

      t.timestamps
    end
  end
end
