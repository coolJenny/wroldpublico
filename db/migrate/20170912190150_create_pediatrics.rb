class CreatePediatrics < ActiveRecord::Migration[5.0]
  def change
    create_table :pediatrics do |t|
      t.integer :uid
      t.text :content

      t.timestamps
    end
  end
end
