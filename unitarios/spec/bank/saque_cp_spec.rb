require_relative '../../app/bank'


#TDD
describe ContaPoupanca do

    describe 'Saque' do
        context 'quando o valor é positivo' do
            before(:all) do
               @cp = ContaPoupanca.new(1000.00)
               @cp.saque(200.00)
            end
            it 'entao atualiza saldo' do
                expect(@cp.saldo).to eql 798.00
            end
        end

        context 'quando o saldo é zero' do
            before(:all) do
               @cp = ContaPoupanca.new(0.00)
               @cp.saque(100.00)
            end
            it 'vejo mensagem' do
                expect(@cp.mensagem).to eql 'saldo insuficiente para saque'
            end    
            it 'meu saldo permanece com zero' do
                expect(@cp.saldo).to eql 0.00
            end
        end

        context 'quando o saldo é  insuficiente' do
            before(:all) do
               @cp = ContaPoupanca.new(100.00)
               @cp.saque(101.00)
            end
            it 'vejo mensagem' do
                expect(@cp.mensagem).to eql 'saldo insuficiente para saque'
            end    
            it 'meu saldo permanece com valor inicial' do
                expect(@cp.saldo).to eql 100.00
            end
        end

        context 'quando o valor é maior que o limite por saque' do
            before(:all) do
               @cp = ContaPoupanca.new(1000.00)
               @cp.saque(501.00)
            end
            it 'vejo mensagem' do
                expect(@cp.mensagem).to eql 'Limite máximo de saque é 500'
            end    
            it 'meu saldo permanece com o valor inicial' do
                expect(@cp.saldo).to eql 1000.00
            end
        end
    end
end