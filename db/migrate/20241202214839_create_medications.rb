class CreateMedications < ActiveRecord::Migration[8.0]
  def change
    create_table :medications do |t|
      t.text :name
      t.text :description

      t.timestamps
    end

    add_index :medications, :name, unique: true
  end
end
