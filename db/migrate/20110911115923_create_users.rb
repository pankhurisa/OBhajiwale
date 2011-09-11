class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email, :null=>false
      t.string :phone
      t.boolean :active, :null=>false, :default=>true
      t.string :address_line_1, :null =>false
      t.string :address_line_2
      t.string :postal_code
      t.string :area, :null =>false
      t.string :city, :null =>false
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
