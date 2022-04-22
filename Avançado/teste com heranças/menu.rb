require_relative 'veiculo'
require_relative 'carro'
require_relative 'moto'

civic = Carro.new('civic', 'honda', 'SI')
civic.ligar
civic.buzinar
civic.dirigir
blazer = Carro.new('blazer', 'crevrolet', 'SU')
blazer.ligar
blazer.buzinar
blazer.dirigir
pop = Moto.new('pop100', 'honda', '2009')
pop.ligar
pop.buzinar
pop.pilotar