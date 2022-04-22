class AvangersHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avanger)
        self.list.push(avanger)
    end
end

# TDD (Desenvolvimento Guiado por testes)
describe AvangersHeadQuarter do

    it 'deve adicionar um vingador' do
        hq = AvangersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
    end

    it 'deve adicionar uma lista de vingadores' do
        hq = AvangersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        res = hq.list.size > 0

        expect(hq.list.size).to be > 0
        expect(res).to be true
    end

        it 'thor deve ser o primeiro da lista' do
            hq = AvangersHeadQuarter.new
            
            hq.put('Thor')
            hq.put('Hulk')
            hq.put('Spiderman')

            expect(hq.list).to start_with('Thor')
    
    end

    it 'iroman deve ser o ultimo da lista' do
        hq = AvangersHeadQuarter.new
        
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('ironman')

        expect(hq.list).to end_with('ironman')

    end

    it 'deve conter o sobrenome' do
        avenger = 'peter parker'

        expect(avenger).to match(/parker/)
        expect(avenger).not_to match(/ribeiro/)
    end
end