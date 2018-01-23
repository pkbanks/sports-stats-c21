class CreateStats < ActiveRecord::Migration[5.1]
  def change
    create_table :stats do |t|
      t.string :type
      t.integer :value
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
