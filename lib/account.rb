class Account
    attr_accessor :balance, :pin_code, :exp_date, :account_status  
    
    STANDARD_VALIDITY_YRS = 5
    
    def initialize
        @pin_code = rand(1000..9999)
        @balance = 0
        @account_status = 'active'
        @exp_date = set_expire_date
        
    end 
    
    def set_expire_date
        Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
    end
    
 

end


    