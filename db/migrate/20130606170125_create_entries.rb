class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.datetime :date
      t.string :subject
      t.text :note

      t.timestamps
    end
  end
end
