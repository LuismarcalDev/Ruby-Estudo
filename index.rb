

class Produto
    def initialize(nome,marca,valor)
        @nome = nome
        @marca = marca
        @valor = valor
    end

    def imprimir
        puts "nemo: #{@nome} marca: #{@marca} valor: R$#{@valor}"
    end
end



puts "qual o nome do produto?"
    nomeU = gets.chomp
    
    puts "qual o nome da marca?"
    marcaU = gets.chomp
    
    puts "qual o valor do produto?"
    valorU = gets.chomp

    p1 = Produto.new(nomeU,marcaU,valorU)
    p1.imprimir