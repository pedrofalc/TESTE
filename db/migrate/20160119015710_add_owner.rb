class AddOwner < ActiveRecord::Migration
  def change
  	 add_column :processos, :owner , :integer 
  end
end
