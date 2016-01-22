class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :telefone
      t.integer :matricula
      t.string :email

      t.timestamps null: false
    end
  end
end
