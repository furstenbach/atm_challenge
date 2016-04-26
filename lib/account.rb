class Account
    attr_accessor :balance, :pin_code, :exp_date, :account_status  
    
    def initialize
        @pin_code = rand(1000..9999)
        @balance = 0
        @account_status = 'active'
        @exp_date = '04/19'
    end 
end


    def card_expired(exp_date)
        Date.strptime(exp_date, '%m/%y') < Date.today
    end
