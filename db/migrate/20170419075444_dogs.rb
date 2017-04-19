class Dogs < ActiveRecord::Migration[5.0]
  def self.up
    create_table :dogs do |t|
      t.column :name, :string
      t.column :breed, :string
    end
  end

  def self.down
    drop_table :dogs
  end
end
