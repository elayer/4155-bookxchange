class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.text :author
      t.text :description
      t.text :progress

      t.timestamps
    end
  end
end
