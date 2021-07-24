class AddSpeechToVocabs < ActiveRecord::Migration[5.2]
  def change
    add_column :vocabs, :speech, :text, limit: 16777215, null: true
  end
end
