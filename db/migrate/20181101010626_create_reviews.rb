class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :author
      t.integer :rating
      t.text :text
      t.text :image

      t.timestamps
    end
  end
end
