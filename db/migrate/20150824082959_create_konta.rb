class CreateKonta < ActiveRecord::Migration
  def change
    create_table :konta do |t|
      t.string :firma
      t.string :osoba
      t.integer :telefon
      t.string :mail

      t.timestamps null: false
    end
  end
end
