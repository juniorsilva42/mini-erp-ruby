class CreateDependentes < ActiveRecord::Migration[5.2]
  def change
    create_table :dependentes do |t|
      t.string :nome
      t.string :cpf
      t.string :filiacao
      t.belongs_to :funcionario, foreign_key: true

      t.timestamps
    end
  end
end
