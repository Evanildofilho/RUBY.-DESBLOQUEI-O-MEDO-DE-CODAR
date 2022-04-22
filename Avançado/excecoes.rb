=begin 

begin
    # devo tentar alguma coisa

    file = File.open('./ola.txt')
    if file
        puts file.read
    end
rescue Exception => e
    # obter um possivel erro
    puts e.message
    puts e.backtrace
end 
=end

def soma(n1,n2)
    total = n1 + n2
    total
rescue Exception => e
    puts 'Erro ao efetuar a soma'
end

total = soma('10', 5) #somando string + inteiro
puts total

total2 = soma(5,5)
puts total2
