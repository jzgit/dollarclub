class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.text :description
      t.string :email
      t.text :business_model

      t.timestamps
    end
  end
end
