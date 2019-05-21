class CreateFlowers < ActiveRecord::Migration[5.1]
  def change
    create_table :flowers do |t|
      t.string :scientific_name
      t.string :en
      t.string :zh
      t.string :ja
      t.boolean :toxic
      t.string :wiki_url
      t.binary :picture

      t.timestamps
    end
  end
end
