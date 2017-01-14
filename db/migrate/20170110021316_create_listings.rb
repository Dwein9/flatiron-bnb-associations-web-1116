class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.string :address
      t.string :listing_type
      t.decimal :price
      t.belongs_to :host
      t.belongs_to :neighborhood

      t.timestamps null: false
    end
  end
end
