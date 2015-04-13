class CreateNotas < ActiveRecord::Migration
  def change
    create_table :notas do |t|
      t.references :aluno, index: true, foreign_key: true
      t.references :disciplina, index: true, foreign_key: true
      t.float :p1
      t.float :p2
      t.float :p3

      t.timestamps null: false
    end
  end
end
