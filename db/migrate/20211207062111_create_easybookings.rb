class CreateEasybookings < ActiveRecord::Migration[6.1]
  def change
    create_table :easybookings do |t|
      t.string :phone_number
      t.date :date_of_booking

      t.timestamps
    end
  end
end
