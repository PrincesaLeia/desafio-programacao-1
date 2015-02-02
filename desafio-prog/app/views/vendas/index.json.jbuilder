json.array!(@vendas) do |venda|
  json.extract! venda, :id, :nome_comprador, :descricao_item, :preco_item, :qtde_compra, :endereco_vendedor, :nome_vendedor
  json.url venda_url(venda, format: :json)
end
