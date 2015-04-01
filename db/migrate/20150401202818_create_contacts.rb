class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.column :name, :string
      t.column :number, :string
    end
  end
end
