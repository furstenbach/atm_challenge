require './lib/account.rb'
describe Account do
    
    it 'is expected to have a 4 digit pin code on initialize' do
        pin_length = Math.log10(subject.pin_code).to_i + 1
        expect(pin_length).to eq 4
    end 

    it 'is expected to have a balance of 0 on initialize' do
        expect(subject.balance).to eq 0
    end

    it 'is expected that account status is active' do
        expect(subject.account_status).to eq 'active' 
    end
    
    it 'is expected that card is within validity period' do
        exp_date = '12/14'
        expect(subject.card_expired).to eq true
    end

end 
