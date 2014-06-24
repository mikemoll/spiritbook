class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :title
      t.text :entry
      t.references :user, index: true

      t.timestamps
    end
  end
end
