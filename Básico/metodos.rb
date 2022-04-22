=begin def diga_ola(nome)
  puts "ola, " + nome
end

nome1 = ''

puts 'Digite o nome: '
nome1 = gets.chomp

diga_ola(nome1)

def retorna_nome
  'Evanildo'
end

resultado = retorna_nome
puts resultado

def soma(v1,v2)
    total = v1 + v2
    total
end

res = soma(10,15)
puts "valor total é #{res}"

=end