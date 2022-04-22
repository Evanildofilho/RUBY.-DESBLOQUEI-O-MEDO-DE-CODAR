=begin
numero1 = 0
numero2 = 0
total = 0

puts 'informe o numero 1'
numero1 = gets.chomp.to_i

puts 'informe o numero 2'
numero2 = gets.chomp.to_i

total = numero1 + numero2
puts 'Soma'
puts total
total = numero1 - numero2
puts 'Subtração'
puts total
total = numero1 * numero2
puts 'Multiplicação'
puts total
puts 'Divisão'
#total = numero1 / numero2
puts total 
maior que >
menor que <
maior ou igual >=
menor ou igual <=
diferente !=
igual a ==
igual eql?

ex puts v1.eql?(v2)
=end


frase1 = "Gosto muito de Ruby"
frase2 = "Gosto muito de Ruby"
 
# vamos testar se as duas strings são iguais
if frase1.eql? frase2
  puts "As duas strings são iguais"
else
  puts "As duas strings NÃO são iguais"
end

# importa o módulo date
require "date"
 
# obtém a data e hora atual
agora = DateTime::now
 
# exibe o resultado
puts "Agora é " + agora.strftime("%e/%m/%Y - %H:%M:%S")



