class CreateTrends < ActiveRecord::Migration[5.0]
  def change
    create_table :trends do |t|
      t.string :title
      t.string :description
      t.string :photo_url
      t.string :ref_link
      t.timestamps
    end
  end
end
