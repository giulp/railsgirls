class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :valore
      t.text :note
      t.references :category, index: true

      t.timestamps
    end
  end
end
