class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.integer :periodo

      t.timestamps null: false
    end
  end
end
