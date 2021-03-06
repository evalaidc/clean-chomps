class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :author
      t.string :body
      t.string :additional_link
      t.references :trend, index:true, foreign_key: true
      t.timestamps

    end
  end
end
