class Produto
    def initialize(nome,descricao,valor)
        @nome = nome
        @descricao = descricao
        @valor = valor
    end

    def imprimir
        puts "Nome do produto: #{@nome}\n Descrição: #{@descricao}\n Valor: R$#{@valor}" 
    end
end

p1 = Produto.new("Galxy m53","smartphone 8gb Ram", 1200)
p2 = Produto.new("Iphone 15"," 12gb Ram", 5200)
p3 = Produto.new("Nexus pro 2","smartphone", 2800)
p1.imprimir
p2.imprimir
p3.imprimir