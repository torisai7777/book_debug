class CreateBookComments < ActiveRecord::Migration[5.2]
  def change
    create_table :book_comments do |t|
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true
      t.text :comment
      t.integer :book_id

      t.timestamps
    end
  end
end
