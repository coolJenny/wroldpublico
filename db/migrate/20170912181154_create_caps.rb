class CreateCaps < ActiveRecord::Migration[5.0]
  def change
    create_table :caps do |t|
      t.string :name

      t.timestamps
    end
  end
end
