
describe 'Caixas de seleção', :checkbox do

    before(:each) do
        visit '/checkboxes'
    end
    
    it 'marcando uma opção' do #check e uncheck só pode ser utilizando quando o elemento tem 'name' ou 'id'
        check('thor')
    end

    it 'desmarcando uma opção' do
        uncheck('antman')
    end

    it 'marcando com find set true' do
        find('input[value=cap]').set(true)
    end

    it 'desmarcando com find set fale' do
        find('input[value=guardians]').set(false)
    end

    after(:each) do
        sleep 3
    end

end