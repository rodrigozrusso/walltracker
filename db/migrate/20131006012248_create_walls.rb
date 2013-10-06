class CreateWalls < ActiveRecord::Migration
  def change
    create_table :walls do |t|
      t.string :name
      t.references :column, index: true
      t.references :service_class, index: true

      t.timestamps
    end
  end
end
