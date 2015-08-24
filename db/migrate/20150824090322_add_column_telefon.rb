class AddColumnTelefon < ActiveRecord::Migration
  def change
  	add_column :konta, :telefon2, :integer
  end
end
