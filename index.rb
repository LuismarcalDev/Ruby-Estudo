

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

produtos = []

loop do 
puts "qual o nome do produto?"
    nomeU = gets.chomp
    break if nomeU.downcase == "sair"

    puts "qual o nome da marca?"
    marcaU = gets.chomp
    
    puts "qual o valor do produto?"
    valorU = gets.chomp

    p1 = Produto.new(nomeU,marcaU,valorU)
    produtos << p1
    end
 
    puts "\nProdutos cadastrados:"
    produtos.each do |produto|
    produto.imprimir
    end