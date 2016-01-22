class CreateProcessos < ActiveRecord::Migration
  def change
    create_table :processos do |t|
      t.string :nome
      t.date :inicio
      t.date :final

      t.timestamps null: false
    end
  end
end
