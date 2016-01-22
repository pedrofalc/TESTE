class CreateAlunosAndProcessos < ActiveRecord::Migration
  def change
    create_table :alunos_and_processos do |t|
    	t.belongs_to :alunos, index: true
    	t.belongs_to :processos, index: true
    end
  end
end

