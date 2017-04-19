class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.column :name, :string
      t.column :breed, :string
    end
  end
end
