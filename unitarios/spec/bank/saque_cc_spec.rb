require_relative '../../app/bank'


#TDD
describe ContaCorrente do

    describe 'Saque' do
        context 'quando o valor é positivo' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saque(200.00)
            end
            it 'entao atualiza saldo' do
                expect(@cc.saldo).to eql 795.00
            end
        end

        context 'quando o saldo é zero' do
            before(:all) do
                @cc = ContaCorrente.new(0.00)
                @cc.saque(100.00)
            end
            it 'vejo mensagem' do
                expect(@cc.mensagem).to eql 'saldo insuficiente para saque'
            end    
            it 'meu saldo permanece com zero' do
                expect(@cc.saldo).to eql 0.00
            end
        end

        context 'quando o saldo é  insuficiente' do
            before(:all) do
                @cc = ContaCorrente.new(100.00)
                @cc.saque(101.00)
            end
            it 'vejo mensagem' do
                expect(@cc.mensagem).to eql 'saldo insuficiente para saque'
            end    
            it 'meu saldo permanece com valor inicial' do
                expect(@cc.saldo).to eql 100.00
            end
        end

        context 'quando o valor é maior que o limite por saque' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saque(701.00)
            end
            it 'vejo mensagem' do
                expect(@cc.mensagem).to eql 'Limite máximo de saque é 700'
            end    
            it 'meu saldo permanece com o valor inicial' do
                expect(@cc.saldo).to eql 1000.00
            end
        end
    end
end