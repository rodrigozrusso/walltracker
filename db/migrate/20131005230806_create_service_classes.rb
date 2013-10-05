class CreateServiceClasses < ActiveRecord::Migration
  def change
    create_table :service_classes do |t|
      t.string :name
      t.string :description
      t.string :image
      t.integer :limit

      t.timestamps
    end
  end
end
