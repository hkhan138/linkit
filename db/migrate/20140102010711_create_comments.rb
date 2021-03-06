class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post, index: true
      t.text :body
      t.integer :score
      t.references :link, index: true

      t.timestamps
    end
  end
end
