class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.string :oftype
      t.string :location
      t.string :account
      t.string :title
      t.string :opportunity
      t.text :about
      t.string :bd

      t.timestamps null: false
    end
  end
end
