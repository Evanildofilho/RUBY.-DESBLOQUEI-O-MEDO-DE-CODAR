# ruby é uma linguagem puramente orientada a objeto
# tudo em ruby é objetos

# classe possui
# atribuidos que é...
# caracteristicas
# carro(nome, cor, marca, modelo...)

# métodos que é...
# ações
# ligar, buzinar, freiar... (verbos)

class Carro
  attr_accessor :nome

  def ligar
    puts 'o carro está ligado'
  end
end

civic = Carro.new

civic.nome = 'civic'

puts civic.nome
civic.ligar
