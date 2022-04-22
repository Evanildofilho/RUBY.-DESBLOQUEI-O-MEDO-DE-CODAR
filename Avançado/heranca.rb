class Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "#{nome} Está ligado"
    end

    def buzinar
        puts "carro buzinando beep!"
    end
end

class Carro < Veiculo
    def dirigir
        puts "#{nome} Iniciando o trajeto"
    end
end

class Moto < Veiculo
    def pilotar
        puts "#{nome} Iniciando o trajeto"
    end
end

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

