def saudacao(nome)
  puts "ola, #{nome}. bem vindo a calculadora ruby"
end

def soma(a, b)
  a + b
end

def multiplicacao(a, b)
  a * b
end

puts "qual é o seu nome? "
nome = gets.chomp

saudacao(nome)

historico = []

loop do
  puts "\n Digite o primeiro numero"
  n1 = gets.chomp.to_i

  puts "\n Digite o segundo numero"
  n2 = gets.chomp.to_i

  puts "Digite s para somar, m para multiplicar ou q para sair"
  op = gets.chomp

  if op == "s"
    resultado = soma(n1, n2)
    puts "Resultado = #{resultado}"
    historico << resultado   

  elsif op == "m"
    resultado = multiplicacao(n1, n2)
    puts "Resultado = #{resultado}"
    historico << resultado   

  elsif op == "q"
    puts "saindo do programa"
    break

  else
    puts "opção inválida"
  end
end

puts "\n Histórico de resultados:"
historico.each do |r|
  puts r
end
