class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.string :nome_comprador
      t.string :descricao_item
      t.float :preco_item
      t.integer :qtde_compra
      t.string :endereco_vendedor
      t.string :nome_vendedor

      t.timestamps null: false
    end
  end
end
