class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :nome
      t.boolean :tipo
      t.boolean :periodico
      t.date :data

      t.timestamps
    end
  end
end
