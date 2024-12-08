class CreateMedications < ActiveRecord::Migration[8.0]
  def change
    create_table :medications do |t|
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
