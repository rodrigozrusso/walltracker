class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :title
      t.string :description
      t.string :acceptance_description
      t.integer :priority_order
      t.references :parent, index: true
      t.references :status, index: true
      t.references :type, index: true
      t.references :importance, index: true

      t.timestamps
    end
  end
end
