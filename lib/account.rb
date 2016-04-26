class Account
    attr_accessor :balance, :pin_code, :exp_date, :account_status  
    
    def initialize
        @pin_code = rand(1000..9999)
        @balance = 0
    end 
end 