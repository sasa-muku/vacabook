class AddUsersToVacabs < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM vocabs;'
    add_reference :vocabs, :user, null: false, index: true
  end

  def down
    remove_reference :vocabs, :user, index: true
  end
end
