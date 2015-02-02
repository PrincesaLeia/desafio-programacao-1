require 'csv'

class ParseInputFile

  def initialize(file)
    @file = file
  end

    def parse
      n=0
      
      CSV.foreach(@file.path, {col_sep: "\t", headers: true, return_headers: false}) do |linha|

          v=Venda.new
          v.nome_comprador = linha [0]
          v.descricao_item = linha [1]
          v.preco_item = linha [2]
          v.qtde_compra = linha [3]
          v.endereco_vendedor = linha [4]
          v.nome_vendedor = linha [5]

          if v.save 
            n=n+1
            GC.start if n%50 == 0
          end

          #:notice => "Upload efetuado com sucesso. #(n) registros (s) adicionados na tabela"
          
      end
    end
end
