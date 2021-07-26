class CreateSpeeches < ActiveRecord::Migration[5.2]
  def change
    create_table :speeches do |t|
      t.string :en
      t.text :audio, limit: 16777215, null: false

      t.timestamps
    end
  end
end
