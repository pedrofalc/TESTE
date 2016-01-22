class CreateProfessorsAndProcessos < ActiveRecord::Migration
  def change
    create_table :professors_and_processos do |t|
    	t.belongs_to :professors, index: true
    	t.belongs_to :processos, index: true

    end


    
  end
end
