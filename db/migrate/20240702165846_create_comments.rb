class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :name, null: false
      t.text :text, null: false
      t.string :date, null: false

      t.timestamps
    end

    add_index :comments, :name, unique: true
  end
end
