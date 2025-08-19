def NomeUsuario(nome)
  puts "ola, #{nome}, seja bem vindo ao cadastramento de funcionarios"
end

Funcionarios = []

def cadastrar(nome_func, idade_func, funcao_func, setor_func)
  Funcionarios << {
    NomeFuncionario: nome_func,
    IdadeFuncionario: idade_func,
    FuncaoFuncionario: funcao_func,
    SetorFuncionario: setor_func
  }
end

def Mostrar
  Funcionarios.each do |f|
    puts "Nome: #{f[:NomeFuncionario]}, idade: #{f[:IdadeFuncionario]}, função: #{f[:FuncaoFuncionario]}, setor: #{f[:SetorFuncionario]}"
  end
end

def adicionarInfos
  puts "ola boa tarde, qual é o seu nome? "
  nome = gets.chomp
  NomeUsuario(nome)

  loop do
    puts "vamos cadastrar um funcionario"

    puts "qual é o nome do funcionario? "
    nome_funcionario = gets.chomp

    puts "qual a idade dele? "
    idade_funcionario = gets.chomp.to_i

    puts "Qual a função dele? "
    funcao_funcionario = gets.chomp

    puts "De qual setor ele se Encontra? "
    setor_funcionario = gets.chomp

    puts " voce deseja cadastrar este funcionario? (S/N) "
    cadastro = gets.chomp.downcase
    if cadastro == "s"
      puts "cadastro efetuado"
      cadastrar(nome_funcionario, idade_funcionario, funcao_funcionario, setor_funcionario)
    elsif cadastro == "n"
      puts "programa fechando"
      break
    else
      puts "sla"
    end

    puts " voce deseja continuar a cadastar mais funcionarios? (S/N)"
    continuar = gets.chomp.downcase

    if continuar == "s"
      puts "ok, vamos continuar"
    elsif continuar == "n"
      Mostrar
      break
    else
      puts "sla"
    end
  end
end

adicionarInfos
