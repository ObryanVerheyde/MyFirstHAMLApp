class CreatePopAppels < ActiveRecord::Migration[5.1]
  def change
    create_table :pop_appels do |t|
      t.string :lastname
      t.string :firstname
      t.boolean :presence

      t.timestamps
    end
  end
end
