class Conta
  #atributos(caracteristicas)
  attr_accessor :saldo, :nome

  #contrutor(inicializar os atributos)
  def initialize
      self.saldo = 0.0
      self.nome = ''
  end
  #metodos(acoes)
  def depositar(valor)
    self.saldo += valor
    puts "valor depositado é de #{valor} Reais na conta de #{self.nome}"
  end
end

c = Conta.new
c.nome = 'Evanildo'
c.depositar(100.00)
puts c.saldo

c.depositar(100.00)
puts c.saldo
puts c.nome

=begin ou
class Conta
  attr_accessor :saldo, :nome

  def initialize(nome)
      self.saldo = 0.0
      self.nome = nome
  end

  def depositar(valor)
    self.saldo += valor
    puts "valor depositado é de #{valor} Reais na conta de #{self.nome}"
  end
end


c = Conta.new('Evanildo')

c.depositar(100.00)
puts c.saldo

c.depositar(100.00)
puts c.saldo
puts c.nome =end