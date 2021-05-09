class CreateVocabs < ActiveRecord::Migration[5.2]
  def change
    create_table :vocabs do |t|
      t.string :en
      t.string :ja
      t.text :memo

      t.timestamps
    end
  end
end
